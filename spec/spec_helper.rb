require 'rubygems'
require 'bundler/setup'

require_relative '../lib/locomotive/common'

RSpec.configure do |config|
  config.filter_run focused: true
  config.run_all_when_everything_filtered = true
end
