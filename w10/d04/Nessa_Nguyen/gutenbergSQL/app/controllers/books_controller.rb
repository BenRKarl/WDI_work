class BooksController < ApplicationController
  def index
    books = Book.where({author_id: params[:author_id]})
    render json: books.to_json
  end
end
