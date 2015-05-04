require 'colorize'

module Locomotive
  module Common

    class Logger

      attr_accessor :logger

      def initialize
        self.logger = nil
      end

      # Setup the single instance of the ruby logger.
      #
      # @param[ optional ] [ String ] path The path to the log file, full path with log file name
      # Sample /home/locomotivecms/log/server.log (default: nil => Stdout)
      #
      def setup(log_file_full_path = nil)
        require 'logger'

        output = begin
          if log_file_full_path
            log_file_path log_file_full_path
          else
            STDOUT
          end
        end

        self.logger = ::Logger.new(output).tap do |log|
          log.level = ::Logger::DEBUG
          log.formatter = proc do |severity, datetime, progname, msg|
            "#{msg}\n"
          end
        end
      end

      def self.instance
        @@instance ||= self.new
      end

      def self.setup(*args)
        if args.size > 1
          puts "[DEPRECATION] Logger.setup(path, stdout=false) is deprecated. " \
            "Please use Logger.setup(log_file_full_path) instead, " \
            "like: /home/locomotivecms/log/server.log"
        end
        self.instance.setup args.first
      end

      def self.close
        self.instance.logger.close
      end

      class << self
        %w(debug info warn error fatal unknown).each do |name|
          define_method(name) do |message|
            if self.instance.logger
              self.instance.logger.send(name.to_sym, message)
            end
          end
        end
      end

      private

      def log_file_path(log_file_full_path)
        if File.directory? log_file_full_path
          puts "[DEPRECATION] Please use fully log file path like: /home/locomotivecms/log/server.log"
          File.expand_path(File.join(log_file_full_path, 'log', 'locomotivecms.log'))
        else
          log_file_full_path
        end.tap { |path| FileUtils.mkdir_p(File.dirname(path)) }
      end
    end
  end
end
