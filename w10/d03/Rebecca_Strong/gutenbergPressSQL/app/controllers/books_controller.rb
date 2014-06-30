class BooksController < ApplicationController
  def index
    books = Author.find(params[:author_id]).books
    #books where Author id from book table is indicator for where books belong
    render json: books.to_json

  end
end
