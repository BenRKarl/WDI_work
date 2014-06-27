class AuthorsController < ApplicationController
  # authors GET  /authors(.:format)           authors#index
  def index
    authors = Author.all
    render json: authors.to_json
  end
end
