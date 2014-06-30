class BooksController < ApplicationController

  def index
    books = Author.all
    render json: books.to_json
  end
end