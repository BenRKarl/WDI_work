require 'spec_helper'
describe BooksController do
  describe 'given a book' do
    before :each do
      @oldman = Book.new()
      @oldman.title = 'The Old Man and the Sea'
      @oldman.save
    end

    describe 'GET index' do
      before :each do
        get :index
      end

      it 'responds successfully' do
        actual = response.code
        expected = '200'
        expect(actual).to eq(expected);
      end

      it 'assigns @books' do
        actual = assigns(:books)
        expected = [@oldman]
        expect(actual).to eq(expected)
      end
    end #Get Index
    describe 'GET show' do
      before :each do
        get :show, :id => @oldman.id
      end
      it 'responds successfully' do
        actual = response.code
        expected = '200'
        expect(actual).to eq(expected);
      end
      it 'assigns @book' do
        actual = assigns(:book)
        expected = @oldman
        expect(actual).to eq(expected)
      end
      it 'renders the show template' do
        expect(response).to render_template('show')
      end
    end #Get show
    describe 'GET edit' do
      before :each do
        get :edit, :id => @oldman.id
      end
      it 'responds successfully' do
        actual = response.code
        expected = '200'
        expect(actual).to eq(expected)
      end
      it 'assigns @book' do
        actual = assigns(:book)
        expected = @oldman
        expect(actual).to eq(expected)
      end
      it 'renders the edit template' do
        expect(response).to render_template('edit')
      end
    end #Get Edit


    describe 'POST update' do
      before :each do
        post :update, {:id => @oldman.id, :book => {title: 'goldman and me'}}
      end

      it "responds with a redirect" do
        actual = response.code
        expected = '302'
        expect(actual).to eq(expected)
      end

      it 'updates a books record' do
        @oldman.reload
        actual = @oldman.title
        expected = 'goldman and me'
        expect(actual).to eq(expected)
      end
    end #Post update

    describe 'DELETE destroy' do
      it 'destroys a book record' do
        expect {delete :destroy, {:id => @oldman.id}}
      end
    end #Delete

  end #given a book

  describe 'GET new' do
    before :each do
      get :new
    end
    it "responds with success" do
      actual = response.code
      expected = '200'
      expect(actual).to eq(expected)
    end 

    it 'renders the new template' do
      expect(response).to render_template('new')
    end
  end # Get new
  describe 'Post to create' do
    before :each do
      post :create, {:book => {title:'The Crucible', author:'Arthur Miller'}}
    end

    it "responds with a redirect" do
      actual = response.code
      expected = '302'
      expect(actual).to eq(expected)
    end

    it "redirects to show" do
      response.should redirect_to book_path(Book.last)
    end
  end


end #BooksController