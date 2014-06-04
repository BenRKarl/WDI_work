require 'spec_helper'

describe CarsController do

  describe 'GET index' do
    before :each do
      get :index
    end

    it 'responds successfully' do
      actual = response.code
      expected = '200'
      expect(actual).to eq(expected)
    end

    it 'assigns @cars' do
      actual = assigns(:cars)
      expected = [@ford]
      expect(actual).to eq(expected)
    end

  end

end
