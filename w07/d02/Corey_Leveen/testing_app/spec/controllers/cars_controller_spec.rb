require 'spec_helper'

describe CarsController do

  describe 'given a car' do
    before :each do
      @ford = Car.new()
      @ford.make = 'Ford'
      @ford.save
    end

# INDEX
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

# SHOW
    describe 'GET show' do
      before :each do
        get :show, :id => @ford.id
      end

      it 'responds successfully' do
        actual = response.code
        expected = '200'
        expect(actual).to eq(expected)
      end

      it 'assigns @car' do
        actual = assigns(:car)
        expected = @ford
        expect(actual).to eq(expected)
      end

      it 'renders the show template' do
        expect(response).to render_template('show')
      end

    end # GET show

# EDIT
      describe 'GET edit' do
        before :each do
          get :edit, :id => @ford.id
        end

        it 'responds successfully' do
          actual = response.code
          expected = '200'
          expect(actual).to eq(expected)
        end
 # why does assigns @car pass if its removed from controller action?
        it 'assigns @car' do
          actual = assigns(:car)
          expected = @ford
          expect(actual).to eq(expected)
        end

        it 'renders the edit template' do
          expect(response).to render_template('edit')
        end
      end # GET edit

# UPDATE
      describe 'POST update' do
        before :each do
          post :update, {:id => @ford.id, :car => {make: 'Ford'}}
        end

        it 'responds with a redirect' do
          actual = response.code
          expected = '302'
          expect(actual).to eq(expected)
        end

        it 'updates car record' do
          @ford.reload
          actual = @ford.make
          expected = 'Ford'
          expect(actual).to eq(expected)
        end

        it 'redirects to show' do
          response.should redirect_to car_path(@ford)
        end
      end # POST update

# DELETE
      describe 'DELETE destroy' do
        it 'destroy person record' do
          expect { delete :destroy, {:id => @ford.id}}
          .to change(Car, :count).by(-1)
        end
      end # DELETE destroy
  end # Given a car

# NEW
  describe 'GET new' do
    before :each do
      get :new
    end

    it 'responds successfully' do
      actual = response.code
      expected = '200'
      expect(actual).to eq(expected)
    end

    it 'renders the new template' do
      expect(response).to render_template('new')
    end
  end # GET new

# CREATE
  describe 'POST create' do
    before :each do
      post :create, {:car => {make: 'Pagani', year: 2011}}
    end

    it 'responds with a redirect' do
      actual = response.code
      expected = '302'
      expect(actual).to eq(expected)
    end

    it 'inserts a car record' do
      actual = Car.last.make
      expected = 'Pagani'
      expect(actual).to eq(expected)
    end

    it 'redirects to show' do
      response.should redirect_to car_path(Car.last)
    end
  end # POST create
end # CarsController
