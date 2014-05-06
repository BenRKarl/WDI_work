#corey's version
require 'bundler'
Bundler.require

require_relative 'models/movie'

ActiveRecord::Base.establish_connection(
  :adapter => 'postgresql',
  :database => 'movies_app'
  )


get '/' do
  erb :index
  redirect '/movies'
end

get '/movies' do
  @movies = Movie.all
  erb :movies
end

get '/movies/new' do
  erb :new
end

post '/movies' do
  # create a new movie based on
  # the information entered in the form
  title = params['movie_title']
  director = params['movie_director']
  screenwriter = params['movie_screenwriter']
  Movie.create({title: title, director: director, screenwriter: screenwriter})
  redirect '/movies'
end

