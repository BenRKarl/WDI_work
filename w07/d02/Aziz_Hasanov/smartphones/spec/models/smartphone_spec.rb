require 'spec_helper'

describe Smartphone do
  describe '#to_s' do
    it 'returns formatted model name' do
      htc = Smartphone.new({model: 'HTC One', os: 'Android'})
      actual = htc.to_s
      expected = 'HTC One (Android)'
      expect(actual).to eq(expected)
    end
  end
end
