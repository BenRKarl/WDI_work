class BooksController < ApplicationController
    # GET  /authors/:author_id/books(.:format) books#index

    def index
      books = Author.find(params[:author_id]).books
      render json: books.to_json
    end
end
