require 'spec_helper'

describe Person do

  describe '#to_s' do 
    it 'returns a formatted name' do 
      lich = Person.new({name: 'Lichard', email: 'lichard@lichmail.com'})
      actual = lich.to_s
      expected = 'Lichard (lichard@lichmail.com)'
      expect(actual).to eq (expected)
    end
  end


end
