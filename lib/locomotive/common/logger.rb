module Locomotive
  module Common

    class Logger

      attr_accessor :logger

      def initialize
        self.logger = nil
      end

      # Setup the single instance of the ruby logger.
      #
      # @param [ String ] path The path to the log file (default: log/locomotivecms.log)
      # @param [ Boolean ] stdout Instead of having a file, log to the standard output
      #
      def setup path
        require 'logger'

        out = path ? logfile_path(path) : STDOUT

        self.logger = ::Logger.new(out).tap do |log|
          log.level     = ::Logger::DEBUG
          log.formatter = proc do |severity, datetime, progname, msg|
            "#{msg}\n"
          end
        end
      end

      def self.instance
        @@instance ||= self.new
      end

      def self.setup path=nil
        self.instance.setup path
      end

      class << self
        %w(debug info warn error fatal unknown).each do |name|
          define_method(name) do |message|
            self.instance.logger.send(name.to_sym, message)
          end
        end
      end

      private

      def logfile_path path
        File.expand_path(File.join(path)).tap do |_path|
          FileUtils.mkdir_p(File.dirname(_path))
        end
      end

    end
  end
end