require 'spec_helper'

describe Place do
  describe '# to_s' do
    it 'should return a formatted name' do
      homer = Place.new({name:'Homer, AK', description:'Homer has been described in lots of ways: quirky, quaint, cosmic. “Too rough and too weird to be a tourist trap,” was how one New York Times writer put it.'})
      expect(homer.to_s).to eq('Homer, AK is a place.')
    end
  end
end
