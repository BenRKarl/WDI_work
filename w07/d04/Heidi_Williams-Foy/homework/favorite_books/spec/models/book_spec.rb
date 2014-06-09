require 'spec_helper'

describe Book do
  describe "#to_s" do
    it 'returns formated name' do
      lich = Book.new({title: 'Life and Fate', author: 'Vasily Grossman'})
      actual = 
      expected = "Life and Fate", "Vasily Grossman"
      expect(actual).to eq(expected)
    end
  end
end
