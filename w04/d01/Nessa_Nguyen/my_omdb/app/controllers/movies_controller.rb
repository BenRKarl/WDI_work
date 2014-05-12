class MoviesController < ApplicationController
  def index
  end

  def search
    movie_name = params.fetch :name

    @movies = Movie.search(movie_name)
            
  end

  class Movie
    attr_reader :name
    def initialize(name)
      @name = name
    end  
  end
end
