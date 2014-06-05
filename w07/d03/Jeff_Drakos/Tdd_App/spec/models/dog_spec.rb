
require 'spec_helper'

describe Dog do
  describe "#to_s" do
    it 'returns formated name' do
      cali = Dog.new({name: 'Cali', age: 8})
      actual = cali.to_s
      expected = 'Cali (8)'
      expect(actual).to eq(expected)
    end
  end




end
