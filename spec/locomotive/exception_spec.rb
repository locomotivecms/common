require 'spec_helper'

describe Locomotive::Common::DefaultException do

  specify do
    expect do
      raise Locomotive::Common::DefaultException.new
    end.to raise_error(Locomotive::Common::DefaultException)
  end

end