# frozen_string_literal: true

require 'spec_helper'

describe Locomotive::Common::DefaultException do
  specify do
    expect do
      raise Locomotive::Common::DefaultException
    end.to raise_error(Locomotive::Common::DefaultException)
  end
end
