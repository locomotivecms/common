# frozen_string_literal: true

source 'https://rubygems.org'

platform :ruby do
  ruby File.read('.ruby-version').strip
end

# Specify your gem's dependencies in locomotivecms_common.gemspec
gemspec

gem 'rubocop'

group :test do
  gem 'coveralls', '~> 0.8.21', require: false
  gem 'rspec', '~> 3.12.0'
end
