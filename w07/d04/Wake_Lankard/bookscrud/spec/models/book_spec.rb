require 'spec_helper'

describe Book do
  
  describe '#to_s' do
    it 'should return a formated name' do
      dune = Book.new({title: 'Dune', author: 'Frank Herbert'})
      actual = dune.to_s
      expected = 'Dune by Frank Herbert'
      expect(actual).to eq(expected)
    end
  end
  



end
