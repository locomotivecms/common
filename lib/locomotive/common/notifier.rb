module Locomotive
  module Common

    class Notifier
      def method_missing method, *args
        nil
      end
    end

  end
end