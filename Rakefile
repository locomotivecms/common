require 'rubygems'
require 'bundler/setup'
require 'bundler/gem_tasks'
require 'rake'
require 'rspec'
require 'rspec/core/rake_task'

require_relative 'lib/common'

RSpec::Core::RakeTask.new('spec:all') do |spec|
  spec.pattern = 'spec/**/*_spec.rb'
end

task spec: ['spec:all']
task default: :spec