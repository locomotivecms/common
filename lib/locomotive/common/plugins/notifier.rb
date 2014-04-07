module Locomotive
  module Common
    module Plugins

      class Notifier
        def initialize(exception)
          exception.notifier.extend(UiDevNull)
        end

        module UiWithBeep
          def fatal(*)
            nil # Locomotive::Steam::Logger.fatal args.first
          end
        end
      end

    end
  end
end