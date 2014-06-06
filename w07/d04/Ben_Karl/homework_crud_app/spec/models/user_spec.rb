require 'spec_helper'

describe User do
  describe '#to_s' do
    it 'returns formatted name' do
      ben = User.new({name: "Benjamin Richard Karl"})
      actual = ben.to_s
      expected = "Benjamin Richard Karl is my name."
      expect(actual).to eq(expected)
    end
  end
end
