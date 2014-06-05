require 'spec_helper'

describe BooksController do

  # --- GIVEN A BOOK ---
  describe 'given a book' do

    before :each do 
      @jest = Book.new
      @jest.title = 'Infinite Jest'
      @jest.save
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

      it 'assigns @books' do 
        actual = assigns(:books)
        expected = [@jest]
        expect(actual).to eq(expected)
      end


    end # GET index

    # --- SHOW ---
    describe 'GET show' do 

      before :each do 
        get :show, :id => @jest.id
      end

      it 'resonds successfully' do 
        actual = response.code
        expected = '200'
        expect(actual).to eq(expected)  
      end

      it 'assigns @book' do
        actual = assigns(:book)
        expected = @jest
        expect(actual).to eq(expected)          
      end

      it 'renders the show template' do  
        expect(response).to render_template('show')
      end

    end # GET show

    # --- EDIT ---
    describe 'GET edit' do

      before :each do 
        get :edit, :id => @jest.id
      end

      it 'resonds successfully' do 
        actual = response.code
        expected = '200'
        expect(actual).to eq(expected)  
      end

      it 'assigns @book' do
        actual = assigns(:book)
        expected = @jest
        expect(actual).to eq(expected)          
      end

      it 'renders the edit template' do  
        expect(response).to render_template('edit')
      end      

    end # GET edit

    # --- UPDATE --
    describe 'POST update' do 

      before :each do
        post :update, {:id => @jest.id, :book => {title: 'The Broom of the System'}}
      end

      it 'responds with a redirect' do
        actual = response.code
        expected = '302'
        expect(actual).to eq(expected)        
      end

      it 'updates a book record' do 
        @jest.reload
        actual = @jest.title  
        expected = 'The Broom of the System'
        expect(actual).to eq(expected)
      end

      it 'redirects to show' do
        response.should redirect_to book_path(Book.last)
      end         

    end # POST update

    # --- DESTROY ---
    describe 'DELETE destroy' do 

      it 'destroys a book record' do 
        expect {delete :destroy, {:id => @jest.id}}
        .to change(Book, :count).by(-1)
      end

    end # DELETE destroy

  end # given a book

  # --- CREATE ---
  describe 'POST create' do 

    before :each do
      post :create, {:book => {title: 'Discipline and Punish', author: 'Michel Foucault'}}
    end

    it 'responds with a redirect' do 
      actual = response.code
      expected = '302'
      expect(actual).to eq(expected)      
    end

    it 'inserts a person record' do 
      actual = Book.last.title
      expected = 'Discipline and Punish'
      expect(actual).to eq(expected)
    end

    it 'redirects to show' do
      response.should redirect_to book_path(Book.last)
    end

  end # POST create  

  # --- NEW ---
  describe 'GET new' do 

    before :each do 
      get :new
    end

    it 'responds succesfully' do 
      actual = response.code
      expected = '200'
      expect(actual).to eq(expected)      
    end

    it 'renders the new template' do 
      expect(response).to render_template('new')
    end

  end


end
