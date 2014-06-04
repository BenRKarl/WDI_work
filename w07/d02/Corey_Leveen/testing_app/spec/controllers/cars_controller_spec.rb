require 'spec_helper'

describe CarsController do

  describe 'given a car' do
    before :each do
      @ford = Car.new()
      @ford.make = 'Ford'
      @ford.save
    end

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



    end # GET index
  end # Given a car
end # CarsController
