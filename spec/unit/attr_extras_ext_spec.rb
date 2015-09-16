require 'spec_helper'

describe AttrExtrasExt do

  subject { Person.new('Hank', 'Moody') }

  describe 'reader' do

    it { expect(subject.first_name).to eq 'Hank' }
    it { expect(subject.last_name).to eq 'Moody' }

  end

  describe 'writer' do

    before { subject.first_name = 'Karen' }

    it { expect(subject.first_name).to eq 'Karen' }

  end


  class Person
    attr_accessor_initialize :first_name, :last_name
  end
end
