# frozen_string_literal: true

require_relative 'common/version'
require_relative 'common/core_ext'
require_relative 'common/attr_extras_ext'
require_relative 'common/logger'
require_relative 'common/exception'
require_relative 'common/notifier'
require_relative 'common/configuration'

require 'active_support'
require 'active_support/concern'
require 'active_support/deprecation'
require 'active_support/core_ext'

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
