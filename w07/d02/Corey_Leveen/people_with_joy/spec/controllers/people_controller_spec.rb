require 'spec_helper'

describe PeopleController do
  describe 'given a person' do

    before :each do
      @andre = Person.new()
      @andre.name = 'Andre'
      @andre.save
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
