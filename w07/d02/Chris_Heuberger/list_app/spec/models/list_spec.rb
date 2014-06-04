require 'spec_helper'

describe List do

  describe '#to_s' do
    it 'returns list name' do
      list1 = List.new({name: 'Books'})
      actual = list1.to_s
      expected = 'Books'
      expect(actual).to eq(expected)
    end
  end

end
