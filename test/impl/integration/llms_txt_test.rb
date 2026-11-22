# frozen_string_literal: true

require 'minitest/autorun'
require 'jekyll'
require 'nokogiri'
require 'tmpdir'
require 'fileutils'
require_relative '../../../_plugins/markdown_parser'
require_relative '../../../_plugins/resource_embed_filters'
require_relative '../../../_plugins/skill_processor'
require_relative '../../../lib/talk_skill_validator'

class LlmsTxtTest < Minitest::Test
  ROOT = File.expand_path('../../..', __dir__)
  STEM = 'DEMO-ai-coding-assistants-2025'
  RECORDING = 'https://www.youtube.com/watch?v=sTcx0EvILr4&t=18039s'
  LEGACY_STEMS = %w[DEMO-devops-revolution-2025 DEMO-kubernetes-security-2024].freeze

  def setup
    @dir = Dir.mktmpdir('llms_txt_test')
    %w[_layouts _includes _config.yml index.md llms.txt].each do |path|
      FileUtils.cp_r(File.join(ROOT, path), @dir)
    end
    %w[_talks _skills].each do |path|
      FileUtils.cp_r(File.join(ROOT, 'test/fixtures/talk_skills', path), @dir)
    end
    talk_path = File.join(@dir, '_talks', "#{STEM}.md")
    raw = File.read(talk_path).sub('layout: talk', "layout: talk\npermalink: /custom-talk/")
    raw = raw.sub('**Date:** 2025-04-08', "**Date:** 2025-04-08\n**Video:** [Recording](#{RECORDING})")
    File.write(talk_path, raw)
  end

  def teardown
    FileUtils.rm_rf(@dir)
  end

  ['', '/preview'].each do |baseurl|
    define_method("test_index_and_discovery_with_#{baseurl.empty? ? 'root' : 'subpath'}_hosting") do
      site, text = build(baseurl)
      assert_equal 3, validate(site)
      origin = "https://example.com#{baseurl}"
      entries = text.split('## Talks — newest first', 2).last.lines.grep(/^- \[/)

      assert text.start_with?('# ')
      refute_match(/\{%|\{\{|<html|<!DOCTYPE/, text)
      assert_equal 3, entries.size
      assert_includes text, "[Recording](#{RECORDING})"
      assert_equal 2, text.scan("#{origin}/skills/#{STEM}/SKILL.md").size
      assert_includes text, "#{origin}/custom-talk/"
      assert_includes text, 'Prefer the matching Agent Skill'
      assert_includes text, 'retrieve the transcript or captions'

      site.collections['talks'].docs.each do |talk|
        entry = entries.find { |line| line.include?("(#{origin}#{talk.url})") }
        refute_nil entry, "missing talk #{talk.url}"
        assert_equal !!talk.data['skill'], entry.include?('[Agent Skill]')
      end
      site.pages.select { |page| page.name == 'index.md' }.map(&:output).concat(
        site.collections['talks'].docs.map(&:output)
      ).each do |html|
        link = Nokogiri::HTML(html).at_css('head link[rel="describedby"]')
        refute_nil link
        assert_equal "#{baseurl}/llms.txt", link['href']
      end
    end
  end

  def test_site_without_skills_still_lists_all_talks
    FileUtils.rm_rf(File.join(@dir, '_skills'))
    site, text = build('')
    assert_equal 3, validate(site, legacy_stems: LEGACY_STEMS + [STEM])

    refute_includes text, '## Agent Skills'
    refute_includes text, '[Agent Skill]'
    assert_equal 3, text.split('## Talks — newest first', 2).last.lines.grep(/^- \[/).size
  end

  def test_new_talk_without_a_skill_blocks_publication_even_with_an_old_talk_date
    File.write(File.join(@dir, '_talks', 'new-talk.md'), <<~MARKDOWN)
      ---
      layout: talk
      ---
      # A new talk

      **Date:** 2020-01-01
    MARKDOWN
    site, = build('')

    error = assert_raises(TalkSkillValidator::Error) { validate(site) }
    assert_includes error.message, '_skills/new-talk/SKILL.md'
  end

  def test_a_talk_that_already_has_a_skill_cannot_drop_it
    FileUtils.rm_rf(File.join(@dir, '_skills', STEM))
    site, = build('')

    error = assert_raises(TalkSkillValidator::Error) { validate(site) }
    assert_includes error.message, "_skills/#{STEM}/SKILL.md"
  end

  def test_a_skill_listing_elsewhere_cannot_replace_the_link_in_the_talk_entry
    site, text = build('')
    text = text.sub(/ \[Agent Skill\]\([^)]+\)\./, '')
    File.write(File.join(site.dest, 'llms.txt'), text)

    error = assert_raises(TalkSkillValidator::Error) { validate(site) }
    assert_includes error.message, 'its llms.txt entry must link directly'
  end

  def test_a_missing_talk_entry_blocks_publication
    site, text = build('')
    File.write(File.join(site.dest, 'llms.txt'), text.lines.reject { |line| line.include?('/custom-talk/') }.join)

    error = assert_raises(TalkSkillValidator::Error) { validate(site) }
    assert_includes error.message, 'missing talk entry'
  end

  def test_a_missing_skill_download_blocks_publication
    site, = build('')
    FileUtils.rm(File.join(site.dest, 'skills', STEM, 'SKILL.md'))

    error = assert_raises(TalkSkillValidator::Error) { validate(site) }
    assert_includes error.message, 'missing published skill'
  end

  def test_an_altered_skill_download_blocks_publication
    site, = build('')
    File.write(File.join(site.dest, 'skills', STEM, 'SKILL.md'), '<html>Not the skill</html>')

    error = assert_raises(TalkSkillValidator::Error) { validate(site) }
    assert_includes error.message, 'published SKILL.md differs'
  end

  def test_a_missing_llms_index_blocks_publication
    site, = build('')
    FileUtils.rm(File.join(site.dest, 'llms.txt'))

    error = assert_raises(TalkSkillValidator::Error) { validate(site) }
    assert_includes error.message, 'build the site before validating'
  end

  def test_malformed_skill_metadata_still_fails_the_build
    File.write(File.join(@dir, '_skills', STEM, 'SKILL.md'), "---\nname: valid-name\n---\nKnowledge\n")

    error = assert_raises(Jekyll::Errors::FatalException) { build('') }
    assert_includes error.message, "missing required field 'description'"
  end

  private

  def validate(site, legacy_stems: LEGACY_STEMS)
    TalkSkillValidator.new(site, legacy_stems: legacy_stems).validate!
  end

  def build(baseurl)
    site = Jekyll::Site.new(Jekyll.configuration(
      'source' => @dir, 'destination' => File.join(@dir, '_site'),
      'url' => 'https://example.com', 'baseurl' => baseurl, 'quiet' => true
    ))
    site.process
    [site, File.read(File.join(site.dest, 'llms.txt'))]
  end
end
