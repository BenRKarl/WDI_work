class AuthorsController < ApplicationController
  def index
    authors = Author.all
    render json: authors.to_json
  end

  def show
    author = Author.find(params[:id])
    render json: author.to_json
  end

end
