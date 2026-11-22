#!/usr/bin/env ruby
# frozen_string_literal: true

require 'optparse'
require_relative '../lib/talk_skill_validator'

options = { 'source' => Dir.pwd, 'quiet' => true }
OptionParser.new do |parser|
  parser.banner = 'Usage: bundle exec ruby utils/validate_talk_skills.rb [options]'
  parser.on('--source PATH', 'Site source (default: current directory)') { |path| options['source'] = path }
  parser.on('--destination PATH', 'Built site directory') { |path| options['destination'] = path }
  parser.on('--baseurl PATH', 'Same baseurl used by jekyll build') { |path| options['baseurl'] = path }
end.parse!

begin
  policy = File.join(options['source'], '.github', 'legacy-talks-without-skills.txt')
  legacy_stems = File.readlines(policy, chomp: true).map(&:strip).reject { |line| line.empty? || line.start_with?('#') }
  site = Jekyll::Site.new(Jekyll.configuration(options))
  # Read and generate metadata without rewriting the artifact we are checking.
  # SkillProcessor rejects malformed skill files using its existing validation.
  site.read
  site.generate
  count = TalkSkillValidator.new(site, legacy_stems: legacy_stems).validate!
  puts "Validated #{count} talks: required skills, llms.txt links, and published skill files."
rescue TalkSkillValidator::Error, Jekyll::Errors::FatalException, Errno::ENOENT => e
  warn "Talk skill validation failed:\n#{e.message}"
  exit 1
end
