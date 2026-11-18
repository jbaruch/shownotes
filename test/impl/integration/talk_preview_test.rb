# frozen_string_literal: true

require 'minitest/autorun'
require 'jekyll'
require 'nokogiri'
require 'tmpdir'
require 'fileutils'
require_relative '../../../_plugins/markdown_parser'

# Build the real layouts to test what link-preview crawlers actually receive.
class TalkPreviewTest < Minitest::Test
  REPO_ROOT = File.expand_path('../../..', __dir__)
  BIO = 'Head of DevRel at Port, working on the agentic SDLC. "Context" & ownership.'.freeze

  def self.site
    @site ||= begin
      source = Dir.mktmpdir('talk_preview_test')
      Minitest.after_run { FileUtils.rm_rf(source) }
      %w[_layouts _includes].each do |path|
        FileUtils.cp_r(File.join(REPO_ROOT, path), source)
      end
      FileUtils.mkdir_p(File.join(source, '_talks'))
      talks = {
        'abstract' => [nil, "## Abstract\n\nBuild **agents** with [Port](https://port.io) & shared context.\nKeep ownership visible.\n\nThis second paragraph must stay out of the preview.\n\n## Resources\n\nResource text."],
        'explicit' => ['A custom description with "quotes" & ownership.', "## Abstract\n\nDo not replace the explicit description."],
        'blank' => ['   ', "## Abstract\n\nUse this abstract instead."],
        'missing' => [nil, "A presentation at TestConf by Test Speaker\n\n## Resources\n\nOnly resources, no abstract."],
        'empty' => [nil, "## Abstract\n\n## Resources\n\nDo not use resources as the description."],
        'entities' => [nil, "## Abstract\n\nUse &quot;context&quot; &amp; ownership, with <em>human</em> review."],
        'heading' => [nil, "## Abstract\n\n# Resources\n\nDo not use resources after an empty abstract."]
      }
      talks.each do |stem, (description, body)|
        front_matter = { 'layout' => 'talk' }
        front_matter['description'] = description unless description.nil?
        content = "#{front_matter.to_yaml}---\n\n# Preview Test\n\n#{body}\n"
        File.write(File.join(source, '_talks', "#{stem}.md"), content)
      end
      File.write(File.join(source, 'index.md'), "---\nlayout: default\n---\nHomepage\n")
      config = Jekyll.configuration('source' => source,
                                    'destination' => File.join(source, '_site'),
                                    'quiet' => true,
                                    'url' => 'https://example.com',
                                    'speaker' => { 'name' => 'Test Speaker', 'bio' => BIO },
                                    'collections' => { 'talks' => { 'output' => true } })
      site = Jekyll::Site.new(config)
      site.process
      site
    end
  end

  def talk_html(stem)
    doc = self.class.site.collections['talks'].docs.find { |d| File.basename(d.path, '.md') == stem }
    Nokogiri::HTML(doc.output)
  end

  def assert_descriptions(expected, html)
    ['meta[name="description"]', 'meta[property="og:description"]', 'meta[name="twitter:description"]'].each do |selector|
      tags = html.css(selector)
      assert_equal 1, tags.size, "exactly one #{selector}"
      assert_equal expected, tags.first['content'], selector
    end
  end

  def test_preview_uses_only_the_first_abstract_paragraph_as_plain_text
    assert_descriptions 'Build agents with Port & shared context. Keep ownership visible.', talk_html('abstract')
  end

  def test_explicit_front_matter_description_wins_and_is_escaped
    assert_descriptions 'A custom description with "quotes" & ownership.', talk_html('explicit')
  end

  def test_blank_description_uses_the_abstract
    assert_descriptions 'Use this abstract instead.', talk_html('blank')
  end

  def test_missing_abstract_uses_the_bio_not_presentation_metadata
    assert_descriptions BIO, talk_html('missing')
  end

  def test_empty_abstract_uses_the_bio_not_resources
    assert_descriptions BIO, talk_html('empty')
    assert_descriptions BIO, talk_html('heading')
  end

  def test_html_entities_and_inline_markup_are_plain_text_without_double_escaping
    assert_descriptions 'Use "context" & ownership, with human review.', talk_html('entities')
  end

  def test_homepage_keeps_the_bio_fallback
    html = Nokogiri::HTML(File.read(File.join(self.class.site.dest, 'index.html')))
    assert_descriptions BIO, html
  end

  def test_talk_title_is_used_in_both_social_cards
    html = talk_html('abstract')
    assert_equal 'Preview Test', html.at_css('meta[property="og:title"]')['content']
    assert_equal 'Preview Test', html.at_css('meta[name="twitter:title"]')['content']
  end
end
