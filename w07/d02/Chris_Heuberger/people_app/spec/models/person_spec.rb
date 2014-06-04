require 'spec_helper'

describe Person do

  describe '#to_s' do
    it 'returns name' do
      Test = Person.new({name: 'Tester'})
      actual = test.to_s
      expected = 'Test'
      expect(actual).to eq(expected)
    end
  end

end
