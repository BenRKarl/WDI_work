require 'spec_helper'

describe BooksController do 
  describe 'given a book' do

    before :each do
      @dune = Book.new()
      @dune.title = 'Dune'
      @dune.save
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
    end #GET index


  end #given a book
  
end