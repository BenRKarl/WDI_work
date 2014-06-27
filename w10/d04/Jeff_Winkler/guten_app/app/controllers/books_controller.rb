
class BooksController < ApplicationController

  def index
    curr_author = Author.find(params[:author_id])
    books = curr_author.books
    render json: books.to_json

  end
end
