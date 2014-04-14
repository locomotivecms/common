module Locomotive
  module Common

    class Configuration
      attr_accessor :notifier

      def initialize
        @notifier = Locomotive::Common::Notifier.new
      end
    end

  end
end
