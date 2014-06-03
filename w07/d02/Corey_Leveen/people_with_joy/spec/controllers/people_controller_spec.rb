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

      it 'assigns @people' do
        actual = assigns(:people)
        expected = [@andre]
        expect(actual).to eq(expected)
      end
    end # GET index

    describe 'GET show' do
      before :each do
        get :show, :id=>@andre.id
      end

      it 'assigns @person' do
        actual = assigns(:person)
        expected = @andre
        expect(actual).to eq(expected)
      end

      it 'renders the show template' do
        expect(response).to render_template('show')
      end
    end # GET show

    # EDIT
    describe 'GET edit' do

      before :each do
        get :edit, :id=>@andre.id
      end

      it 'responds successfully' do
        expect(response.code).to eq('200')
      end

      it "assigns @person" do
        actual = assigns(:person)
        expected = @andre
        expect(actual).to eq.(expected)
      end

      it 'renders the edit template' do
        expect(response).to render_template('edit')
      end

    end # GET edit
  end # given a person
end # People Controller
