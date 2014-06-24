class MoviesController < ApplicationController
  def index
  end

  def search
    movie_name = params.fetch :name
    # @movies.sort_by! { |movie| movie.title}
    # @movie = Movie.find(movie_name)
  #   @movies = [
  #   Movie.new('The Matrix'),
  #   Movie.new ('The Other Matrix')
  # ]
  end

  def show
    @movie = Movie.find params.fetch(:name)

end

  class Movie
    attr_reader :name
    def initialize name
      @name = name
    end
  end

end
