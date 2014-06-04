require 'spec_helper'

describe Book do

  describe '#to_s' do
    it 'can describe itself' do
      jest = Book.new({title: 'Infinite Jest', author: 'David Foster Wallace'})
      actual = jest.to_s
      expected = 'Infinite Jest written by David Foster Wallace'
      expect(actual).to eq(expected)
    end
  end
end
