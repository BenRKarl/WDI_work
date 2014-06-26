class BooksController < ApplicationController
    # GET  /authors/:author_id/books(.:format) books#index

    def index
      books = Book.all
    end
end
