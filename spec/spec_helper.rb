require 'rubygems'
require 'bundler/setup'

require_relative '../lib/common'

RSpec.configure do |config|
  config.filter_run focused: true
  config.run_all_when_everything_filtered = true
end