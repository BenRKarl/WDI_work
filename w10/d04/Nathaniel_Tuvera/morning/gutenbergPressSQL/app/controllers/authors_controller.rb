class AuthorsController < ApplicationController
  # authors GET  /authors(.:format)          authors#index

  def index
    # authors = Author.all.limit(10)
    authors = Author.all
    render json: authors.to_json
  end

end
