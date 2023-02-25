# frozen_string_literal: true

module Locomotive
  module Common
    class DefaultException < StandardError
      attr_accessor :notifier

      def initialize(message = nil, parent_exception = nil)
        self.notifier = Locomotive::Common.configuration.notifier
        log_backtrace(parent_exception) if parent_exception
        super(message)
        init_plugins
      end

      def init_plugins
        @plugins = []
        ::Plugins.constants.each do |name|
          @plugins << ::Plugins.const_get(name).new(self)
        end
      rescue NameError
      end

      protected

      def log_backtrace(parent_exception)
        full_error_message = "#{parent_exception.message}\n\t"
        full_error_message += parent_exception.backtrace.join("\n\t")
        full_error_message += "\n\n"

        notifier.fatal full_error_message
      end
    end

    class RendererException < DefaultException
      attr_accessor :name, :template, :liquid_context

      def initialize(exception, name, template, liquid_context)
        self.name = name
        self.template = template
        self.liquid_context = liquid_context
        log_page_into_backtrace(exception)
        super(exception.message)
        set_backtrace(exception.backtrace)
      end

      def log_page_into_backtrace(exception)
        line = template.line_offset
        line += (exception.respond_to?(:line) ? exception.line || 0 : 0) + 1
        message = "#{template.filepath}:#{line}:in `#{name}'"
        notifier.fatal "[ERROR] #{exception.message} - #{message}\n".red
        exception.backtrace.unshift message
      end
    end
  end
end
