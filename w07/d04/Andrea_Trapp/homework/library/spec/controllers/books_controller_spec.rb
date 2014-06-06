require "spec_helper"

describe BooksController do
  
  describe 'given a book' do
    # have a book
    before :each do
      @mybook = Book.new()
      @mybook.title = "Cookies"
      @mybook.save
    end


    # ----- INDEX -----
    describe 'GET index' do 
      # done get a request for the index action
      before :each do
        get :index
      end

      it 'response successfully' do
        actual = response.code
        expected = '200'
        expect(actual).to eq(expected)
      end

      it 'assigns @books' do
        actual = assigns(:books)
        expected = [@mybook]
        expect(actual).to eq(expected)
      end

    end # GET index

    # --- SHOW ---
    describe 'GET show' do
      before :each do
        get :show, :id => @mybook.id
      end

      it 'response successfully' do
        actual = response.code
        expected = '200'
        expect(actual).to eq(expected)
      end

      it 'assigns @book' do
        actual = assigns(:book)
        expected = @mybook
        expect(actual).to eq(expected)
      end

      it 'renders the show template' do
        expect(response).to render_template('show')
      end

    end # GET show


    # --- EDIT ---
    describe 'GET edit' do
      before :each do
        get :edit, :id => @mybook.id
      end

      it 'response successfully' do
        actual = response.code
        expected = '200'
        expect(actual).to eq (expected)
      end

      it 'renders the edit template' do
        expect(response).to render_template('edit')
      end

    end # GET edit


    # --- UPDATE ---
    describe 'POST update' do

      before :each do
        post :update, {:id => @mybook.id, :book => {title: 'Javascript for experts'}}
      end

      it "response with a redirect" do
        actual = response.code
        expected = "302"
        expect(actual).to eq (expected)
      end

      it 'updates book record' do
        @mybook.reload
        actual = @mybook.title
        expected = 'Javascript for experts'
        expect(actual).to eq (expected)       
      end

      it "redirects to show" do
        response.should redirect_to book_path(@mybook)
      end

    end # POST update


    # --- DELETE ---
    describe 'DELETE destroy' do
      it 'destroys book record' do
        expect { delete :destroy, {:id => @mybook.id} }
        .to change(Book, :count).by(-1)     
      end
    end
  
  end # given a book

  # --- NEW ---
  describe 'GET new' do
    before :each do
      get :new
    end

    it 'response successfully' do
      actual = response.code
      expected = '200'
      expect(actual).to eq(expected)
    end

    it 'renders the new template' do
      expect(response).to render_template('new')
    end

  end # GET new

  # --- CREATE ---
  describe "POST create" do
    before :each do
      post :create, {:book => {title: 'Javascript for dummies', author: 'Lichard Grey'}}
    end

    it "response with a redirect" do
      actual = response.code
      expected = "302"
      expect(actual).to eq (expected)
    end

    it "inserts a book record" do
      actual = Book.last.title
      expected = 'Javascript for dummies'
      expect(actual).to eq(expected)
    end

    it "redirects to show" do
      response.should redirect_to book_path(Book.last)
    end

  end # POST create


end # BooksController