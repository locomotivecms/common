require 'simplecov'
require 'codeclimate-test-reporter'
require 'coveralls'

SimpleCov.start do
  formatter SimpleCov::Formatter::MultiFormatter[
    SimpleCov::Formatter::HTMLFormatter,
    CodeClimate::TestReporter::Formatter,
    Coveralls::SimpleCov::Formatter
  ]

  add_filter 'spec/'
end

require 'rubygems'
require 'bundler/setup'

require_relative '../lib/locomotive/common'

RSpec.configure do |config|
  config.filter_run focused: true
  config.run_all_when_everything_filtered = true
end
