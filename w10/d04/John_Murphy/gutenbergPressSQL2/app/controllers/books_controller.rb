class BooksController < ApplicationController

  def index
    author = Author.find(params[:author_id])
    books = author.books
    render json: books.to_json
  end
  # get 'authors/:author_id/books' => 'books#index'
end
