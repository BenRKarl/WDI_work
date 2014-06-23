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
        # actual = assigns(:people)
        # expected = [@andre]
        # expect(actual).to eq(expected)
        expect(assigns(:people)).to eq([@andre])
      end
    end #GET index

    describe 'GET show' do
      before :each do
        get :show, :id => @andre.id
      end
      it 'responds successfully' do
        expect(response.code).to eq('200')
      end
      it 'assigns @person' do
        expect(assigns(:person)).to eq(@andre)
      end
      it 'renders the show template' do
        expect(response).to render_template('show')
      end
    end #GET show

    describe 'GET edit' do
      before :each do
        get :edit, :id => @andre.id
      end
      it 'responds successfully' do
        expect(response.code).to eq('200')
      end
      it 'assigns @person' do
        expect(assigns(:person)).to eq(@andre)
      end
      it 'renders the edit template' do
        expect(response).to render_template('edit')
      end
    end #GET edit

    describe 'POST update' do
      before :each do
        post :update, {:id => @andre.id, :person => {name: 'nondre', email: 'andre@gmail.com'}}
      end
      it 'response with a redirect' do
        expect(response.code).to eq('302')
      end
      it 'updates person record' do
        @andre.reload
        expect(@andre.name).to eq('nondre')
      end
      it 'redirects to show' do
        response.should redirect_to person_path(@andre)
      end
    end


    describe 'DELETE destroy' do
      it "destroy person record" do
        expect {delete :destroy, {:id => @andre.id}}
        .to change(Person, :count)
        .by(-1)
      end
    end

  end #given a person

  describe 'GET new' do
    before :each do
      get :new
    end
    it 'responds successfully' do
      expect(response.code).to eq('200')
    end
    it 'renders the new template' do
      expect(response).to render_template('new')
    end
  end

  describe 'POST create' do
    before :each do
      post :create, {:person => {name: 'Kathew Lewis', email:'klew@gmail.com'}}
    end
    it "response with a redirect" do
      expect(response.code).to eq('302')
    end
    it "inserts a person record" do
      expect(Person.last.name).to eq('Kathew Lewis')
    end
    it "redirects to show" do
      response.should redirect_to person_path(Person.last)
    end
  end #POSTcreate

end #peopleController