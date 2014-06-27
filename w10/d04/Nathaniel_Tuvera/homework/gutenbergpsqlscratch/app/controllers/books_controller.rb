class BooksController < ApplicationController
  # GET  /authors/:id/books(.:format) books#index
  def index
    # books = Book.all
    books = Author.find(params[:author_id]).books
    render json: books.to_json
  end
end
