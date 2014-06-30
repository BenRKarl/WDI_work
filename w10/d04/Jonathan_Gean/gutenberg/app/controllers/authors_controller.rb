class AuthorsController < ApplicationController
  def index
    # authors = Author.all.limit(50)
    authors = Author.all
    render json: authors.to_json
  end
end
