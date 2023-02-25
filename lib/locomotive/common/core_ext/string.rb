# frozen_string_literal: true

unless String.public_instance_methods.include?(:to_bool)
  class String
    def to_bool
      return true if self == true || self =~ (/(true|t|yes|y|1)$/i)
      return false if self == false || blank? || self =~ (/(false|f|no|n|0)$/i)

      raise ArgumentError, "invalid value for Boolean: \"#{self}\""
    end
  end
end

unless String.public_instance_methods.include?(:permalink)
  require 'stringex'

  class String
    def permalink(underscore = false)
      # if the slug includes one "_" at least, we consider that the "_" is used instead of "-".
      _permalink = if !index('_').nil?
                     to_url(replace_whitespace_with: '_')
                   else
                     to_url
                   end

      underscore ? _permalink.underscore : _permalink
    end

    def permalink!(underscore = false)
      replace(permalink(underscore))
    end

    alias parameterize! permalink!
  end
end
