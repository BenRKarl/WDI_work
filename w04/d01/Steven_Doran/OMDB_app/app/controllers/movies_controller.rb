class MoviesController < ApplicationController

  def index
  end

  def search
    @movies = [
      Movie.new('The Matrix')
      Movie.new('The Goonies')
    ]
  end

  class Movie
    attr_reader :name
    def initialize(name)
      @name = name
    end
  end

end
