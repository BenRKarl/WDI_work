require 'spec_helper'

describe Person do


  describe '#to_s' do
    it 'should return formatted name and email' do
      lich = Person.new({name: 'Lichard', email: 'lich@lichity.com'})
      actual = lich.to_s;
      expected = 'Lichard (lich@lichity.com)'
      expect(actual).to eq(expected)
    end
  end



end
