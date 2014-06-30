class AuthorsController < ApplicationController
  def index
    authors = Author.all
    # authors = Author.all.limit(10)
    render json: authors.to_json
    end
  end
