source 'https://rubygems.org'

# Use latest stable versions
gem 'jekyll', '>= 4.3.0'  # Allow any version 4.3+
gem 'liquid', '>= 4.0.4'  # Override to allow newer liquid versions
gem 'ostruct'  # Used by the renderer; no longer bundled with Ruby 4
gem 'cgi'      # Used by Liquid's filters; no longer bundled with Ruby 4
gem 'minitest', '~> 6.0'
gem 'kramdown-parser-gfm'
gem 'jekyll-feed'
gem 'jekyll-sitemap'
gem 'jekyll-seo-tag'
gem 'sanitize', '~> 7.0'

# Build tools
gem 'rake'

# Google APIs
gem 'google-apis-slides_v1'
gem 'google-apis-drive_v3'

# Security auditing
gem 'bundler-audit'

# For testing only - modern versions
group :test do
  gem 'capybara', '~> 3.40'
  gem 'nokogiri', '>= 1.19.1'  # Security fix for GHSA-wx95-c6cv-8532
  gem 'selenium-webdriver', '~> 4.35'
  gem 'simplecov', '~> 1.0', require: false  # Code coverage analysis
  gem 'minitest-reporters', '~> 1.7', require: false  # Better test output
end
