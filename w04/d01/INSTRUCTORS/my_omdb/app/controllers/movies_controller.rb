class MoviesController < ApplicationController
  def index
  end

  def search
    # @movies = Movie.find(search_params)
    @movies = [
      Movie.new('The Matrix'),
      Movie.new('The Other Matrix')
    ]
  end

  class Movie
    attr_reader :name
    def initialize name
      @name = name
    end
  end

end
