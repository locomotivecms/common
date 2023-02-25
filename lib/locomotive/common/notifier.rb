# frozen_string_literal: true

module Locomotive
  module Common
    class Notifier
      def method_missing _method, *_args
        nil
      end
    end
  end
end
