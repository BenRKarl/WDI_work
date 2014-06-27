class AuthorsController < ApplicationonController
  def index
  authors = Author.all
  render json: authors.to_json
  end
end
