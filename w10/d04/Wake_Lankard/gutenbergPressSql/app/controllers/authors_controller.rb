class AuthorsController < ApplicationController

  def index
    authors = Author.all
    render_to json: authors.to_json
  end
end
