require_relative 'locomotive/common/version'
require_relative 'locomotive/common/logger'
require_relative 'locomotive/common/exception'
require_relative 'locomotive/common/notifier'

require_relative 'locomotive/common/configuration'

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
