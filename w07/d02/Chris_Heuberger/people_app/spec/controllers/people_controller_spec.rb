require 'spec_helper'

describe PeopleController do

  describe 'given a person' do
    before :each do
      @test = Person.new()
      @test.name = 'Test'
      @test.save
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

      it 'assigns @people' do
        actual = assigns(:people)
        expected = [@test]
        expect(actual).to eq(expected)
      end

    end # GET index

    describe 'GET show' do
      before :each do
        get :show, :id => @test.id
      end

      it 'responds successfully' do
        actual = response.code
        expected = '200'
        expect(actual).to eq(expected)
      end

      it 'assigns @person' do
        actual = assigns(:person)
        expected = @test
        expect(actual).to eq(expected)
      end

      it 'renders the show template' do
        expect(response).to render_template('show')
      end

    end # GET show

    describe 'GET edit' do
      before :each do
        get :edit, :id => @test.id
      end

      it 'responds successfully' do
        actual = response.code
        expected = '200'
        expect(actual).to eq(expected)
      end

      it 'assigns @person' do
        actual = assigns(:person)
        expected = @test
        expect(actual).to eq(expected)
      end

      it 'renders the edit template' do
        expect(response).to render_template('edit')
      end

    end # GET edit

    describe 'POST update' do

      before :each do
        post :update, {:id => @test.id, :person => {name: 'nondre'}}
      end

      it "response with a redirect" do
        actual = response.code
        expected = '302'
        expect(actual).to eq(expected)
      end

      it 'updates person record' do
        @test.reload
        actual = @test.name
        expected = 'nondre'
        expect(actual).to eq(expected)
      end

      it "redirects to show" do
        response.should redirect_to person_path(@test)
      end

    end # POST update

    describe 'DELETE destroy' do
     it "destory person record" do
        expect { delete :destroy, {:id => @test.id} }
          .to change(Person, :count).by(-1)
      end
    end

  end # given a person

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

  end # GET edit

  describe 'POST create' do
    before :each do
      post :create, {:person => {name: 'Kathew Lamp', email: 'klool@lampmail.com'}}
    end

    it "response with a redirect" do
      actual = response.code
      expected = '302'
      expect(actual).to eq(expected)
    end

    it "inserts a person record" do
      actual = Person.last.name
      expected = 'Kathew Lamp'
      expect(actual).to eq(expected)
    end

    it "redirects to show" do
      response.should redirect_to person_path(Person.last)
    end

  end

end # PeopleController
