require 'spec_helper'

describe BooksController do 
  describe 'given a book' do

    before :each do
      @dune = Book.new()
      @dune.title = 'Dune'
      @dune.save
    end
#------------INDEX-----------------

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
        expected = [@dune]
        expect(actual).to eq(expected)
      end

    end #GET index

#------------SHOW------------------

     describe 'GET show' do
      before :each do
        get :show, :id => @dune.id
      end

      it 'responds successfully' do
        actual = response.code
        expected = '200'
        expect(actual).to eq(expected)
      end

      it 'assigns @book' do
        actual = assigns(:book)
        expected = @dune
        expect(actual).to eq(expected)
      end

      it 'renders the show template' do
        expect(response).to render_template('show')
      end

    end #GET show

#------------EDIT------------------
      describe 'GET edit' do
        before :each do
          get :edit, :id => @dune.id
        end

        it 'responds successfully' do
          actual = response.code
          expected = '200'
          expect(actual).to eq(expected)
        end

        it 'assigns @book' do
          actual = assigns(:book)
          expected = @dune
          expect(actual).to eq(expected)
        end

        it 'renders the show template' do
          expect(response).to render_template('edit')
        end
      end #GET edit

#------------UPDATE----------------
      describe 'POST update' do

        before :each do
          post :update, {:id => @dune.id, :book => {title: 'Done'}}
        end

        it 'response with a redirect' do
          actual = response.code
          expected = '302'
          expect(actual).to eq(expected)
        end

        it 'updates book record' do
          @dune.reload
          actual = @dune.title
          expected = 'Done'
          expect(actual).to eq(expected)
        end

        it 'redirects to show' do
          response.should redirect_to book_path(@dune)
        end

      end #POST update

#------------DELETE----------------
      describe 'DELETE destroy' do

        it 'destroys book record' do
          expect { delete :destroy, {:id => @dune.id} }
          .to change(Book, :count)
          .by(-1)
        end
      end #DELETE destroy
  
  end #given a book

#------------CREATE----------------
    describe 'POST create' do
      before :each do
        post :create, {:book => {title: "Ender's Game", author: "Orson Scott Card"} }
      end
      
      it 'responds with a redirect' do
        actual = response.code
        expected = '302'
        expect(actual).to eq(expected)
      end

      it 'inserts a book record' do
        actual = Book.last.title
        expected = "Ender's Game"
        expect(actual).to eq(expected)
      end

      it 'redirects to show' do
        response.should redirect_to book_path(Book.last)
      end

    end #POST create

#--------------NEW-----------------
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

    end #GET new


  
end