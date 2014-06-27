class AuthorsController < ApplicationController

  def index
    authors = Author.all.limit(100)
    render json: authors.to_json
  end

end
