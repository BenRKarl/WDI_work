require 'spec_helper'

describe Person do
  
  describe '#to_s' do
    it 'should return formatted name' do
      gard = Person.new({name: 'Gardner', email: 'gardner@gardner.com'})
      actual = gard.to_s
      expected = 'Gardner (gardner@gardner.com)'
      expect(actual).to eq(expected)
    end  
  end
end