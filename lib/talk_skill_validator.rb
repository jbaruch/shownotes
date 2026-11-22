# frozen_string_literal: true

require 'jekyll'
require 'kramdown'
require 'nokogiri'
require 'set'

# Checks the artifact that will be deployed, using the documents and validated
# skill metadata produced by the site's existing Jekyll generators.
class TalkSkillValidator
  class Error < StandardError; end

  def initialize(site, legacy_stems:)
    @site = site
    @legacy_stems = legacy_stems.to_set
  end

  def validate!
    index_path = File.join(@site.dest, 'llms.txt')
    raise Error, "Missing #{index_path}; build the site before validating." unless File.file?(index_path)

    index = Nokogiri::HTML.fragment(Kramdown::Document.new(File.read(index_path), input: 'GFM').to_html)
    entries = index.css('li').map { |item| item.css('a[href]').map { |link| link['href'] } }
    errors = []
    talks = @site.collections.fetch('talks').docs

    talks.each do |talk|
      stem = File.basename(talk.path, '.md')
      skill = talk.data['skill']
      entry = entries.find { |links| links.include?(absolute_url(talk.url)) }
      errors << "#{talk.relative_path}: missing talk entry in built llms.txt" unless entry

      unless skill
        unless @legacy_stems.include?(stem)
          errors << "#{talk.relative_path}: add _skills/#{stem}/SKILL.md; new talks require a valid skill"
        end
        next
      end

      unless entry&.include?(absolute_url(skill.fetch('url')))
        errors << "#{talk.relative_path}: its llms.txt entry must link directly to #{skill.fetch('url')}"
      end

      source = File.join(@site.source, skill.fetch('source_path'))
      published = File.join(@site.dest, skill.fetch('url').delete_prefix('/'))
      if !File.file?(published)
        errors << "#{talk.relative_path}: missing published skill #{published}"
      elsif File.binread(published) != File.binread(source)
        errors << "#{talk.relative_path}: published SKILL.md differs from #{skill.fetch('source_path')}"
      end
    end

    raise Error, errors.join("\n") unless errors.empty?

    talks.size
  end

  private

  def absolute_url(path)
    @url_template ||= Liquid::Template.parse('{{ path | absolute_url }}')
    @url_template.render!({ 'path' => path }, registers: { site: @site })
  end
end
