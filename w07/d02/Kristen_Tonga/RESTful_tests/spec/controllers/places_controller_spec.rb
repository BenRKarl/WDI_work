require 'spec_helper'

describe PlacesController do

  describe 'given a place' do

    before :each do
      @homer = Place.new()
      @homer.name = 'Homer, AK'
      @homer.description = 'Homer has been described in lots of ways: quirky, quaint, cosmic. “Too rough and too weird to be a tourist trap,” was how one New York Times writer put it.'
      @homer.save
    end

    describe 'GET index' do
      before :each do
        get :index
      end

      it 'responds successfully' do
        expect(response.code).to eq('200')
      end
    end
  end
end
