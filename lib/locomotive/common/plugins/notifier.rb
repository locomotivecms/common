# frozen_string_literal: true
# # Sample
#
# module Plugins
#
#   class Notifier
#     def initialize receiver
#       receiver.notifier.extend(SilentLogger)
#     end
#
#     module SilentLogger
#       def fatal(*)
#         nil
#       end
#     end
#   end
#
# end
