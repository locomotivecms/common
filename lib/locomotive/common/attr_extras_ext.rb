# frozen_string_literal: true

require 'attr_extras'

# https://github.com/barsoom/attr_extras/issues/18
module AttrExtrasExt
  def self.mixin
    self::Mixin
  end

  module Mixin
    def attr_accessor_initialize(*names, &block)
      attr_initialize(*names, &block)
      attr_accessor(*AttrExtras::Utils.flat_names(names))
    end
  end
end

class Module
  include AttrExtrasExt.mixin
end
