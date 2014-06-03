require_relative 'common/version'
require_relative 'common/logger'
require_relative 'common/exception'
require_relative 'common/notifier'
require_relative 'common/configuration'

module Locomotive
  module Common
    class << self
      attr_writer :configuration
    end

    def self.configuration
      @configuration ||= Configuration.new
    end

    def self.reset
      @configuration = Configuration.new
    end

    def self.configure
      yield(configuration)
    end
  end
end
