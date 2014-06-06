
require 'spec_helper'


describe PeopleController do

  describe 'given a person' do

    before :each do
      @lich = Person.new()
      @lich.name = "Lichard"
      @lich.save
    end

    describe 'GET index' do
      before :each do
        get :index
      end

      it 'respondes successfully' do
        actual = response.code
        expected = '200'
        expect(actual).to eq(expected)
      end

      it 'assigns @people' do
        actual = assigns(:people)
        expected = [@lich]
        expect(actual).to eq(expected)
      end

    end

    describe 'GET show' do
      before :each do
        get :show, :id => @lich.id
      end

      it 'responds successfully' do
        actual = response.code
        expected = '200'
        expect(actual).to eq(expected)
      end

      it 'assigns @person' do
        actual = assigns(:person)
        expected = @lich
        expect(actual).to eq(expected)
      end

      it 'renders the show template' do
        expect(response).to render_template('show')
      end

    end

    describe 'GET edit' do
      before :each do
        get :edit, :id => @lich.id
      end

      it 'responds successfully' do
        actual = response.code
        expected = '200'
        expect(actual).to eq(expected)
      end

      it 'assigns @person' do
        actual = assigns(:person)
        expected = @lich
        expect(actual).to eq(expected)
      end

      it 'renders the edit template' do
        expect(response).to render_template('edit')
      end

    end

    describe 'POST update' do

      before :each do
        post :update, {:id => @lich.id, :person => {name: 'oichard'}}
      end

      it "responds with a redirect" do
        actual = response.code
        expected = '302'
        expect(actual).to eq(expected)
      end

      it 'updates person record' do
        @lich.reload
        actual = @lich.name
        expected = 'oichard'
        expect(actual).to eq(expected)
      end

      it "redirects to show" do
        response.should redirect_to person_path(@lich)
      end

    end

    describe 'DELETE destroy' do
      it "destroys person record" do
        expect { delete :destroy, {:id => @lich.id} }
          .to change(Person, :count).by(-1)
      end
    end
  end

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

  end

  describe 'POST create' do
    before :each do
      post :create, {:person => {name: 'Johnny Walker', email: 'jwalk@jwalk.com'}}
    end

    it "responds with a redirect" do
      actual = response.code
      expected = '302'
      expect(actual).to eq(expected)
    end

    it "inserts a person record" do
      actual = Person.last.name
      expected = 'Johnny Walker'
      expect(actual).to eq(expected)
    end

    it "redirects to show" do
      response.should redirect_to person_path(Person.last)
    end

  end



end


