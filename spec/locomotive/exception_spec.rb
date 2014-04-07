require 'spec_helper'

describe Locomotive::Common::DefaultException do

  specify do
    expect do
      raise DefaultException.new
    end.to raise_error(DefaultException)
  end

end