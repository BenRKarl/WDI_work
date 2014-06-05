require 'spec_helper'

describe BooksController do

  describe 'given a book' do
    before :each do
      @ = book.new()
      @.name = 
      @.save
    end


    # --- INDEX ---
    describe 'GET index' do
      before :each do
        get :index
      end

      it 'responds successfully' do
        actual = response.code
        expected = '200'
        expect(actual).to eq(expected)
      end

      it 'assigns @Books' do
        actual = assigns(:Books)
        expected = [@]
        expect(actual).to eq(expected)
      end
    end # GET index


    # --- SHOW ---
    describe 'GET show' do
      before :each do
        get :show, :id => @.id
      end

      it 'responds successfully' do
        actual = response.code
        expected = '200'
        expect(actual).to eq(expected)
      end

      it 'assigns @book' do
        actual = assigns(:book)
        expected = @
        expect(actual).to eq(expected)
      end

      it 'renders the show template' do
        expect(response).to render_template('show')
      end

    end # GET show


    # --- EDIT ---
    describe 'GET edit' do
      before :each do
        get :edit, :id => @.id
      end

      it 'responds successfully' do
        actual = response.code
        expected = '200'
        expect(actual).to eq(expected)
      end

      it 'assigns @book' do
        actual = assigns(:book)
        expected = @
        expect(actual).to eq(expected)
      end

      it 'renders the edit template' do
        expect(response).to render_template('edit')
      end

    end # GET edit

    # --- UPDATE ---
    describe 'POST update' do

      before :each do
        post :update, {:id => @.id, :book => {name: ''}}
      end

      it "response with a redirect" do
        actual = response.code
        expected = '302'
        expect(actual).to eq(expected)
      end

      it 'updates book record' do
        @andre.reload
        actual = @.name
        expected = ''
        expect(actual).to eq(expected)
      end

      it "redirects to show" do
        response.should redirect_to book_path(@)
      end

    end # POST update

    describe 'DELETE destroy' do
     it "destory book record" do
        expect { delete :destroy, {:id => @.id} }
          .to change(book, :count).by(-1)
      end
    end

  end # given a book




  # --- NEW ---
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

  # --- CREATE ---
  describe 'POST create' do
    before :each do
      post :create, {:book => {name: '', email: ''}}
    end

    it "response with a redirect" do
      actual = response.code
      expected = '302'
      expect(actual).to eq(expected)
    end

    it "inserts a book record" do
      actual = book.last.name
      expected = ''
      expect(actual).to eq(expected)
    end

    it "redirects to show" do
      response.should redirect_to book_path(book.last)
    end

  end

end # BooksController

