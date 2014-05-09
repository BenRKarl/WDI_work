require 'bundler'
Bundler.require

require_relative 'models/movie'
ActiveRecord::Base.establish_connection(
  :adapter => 'postgresql',
  :database => 'movies_app'
  )

get '/' do
  erb :index
end

get '/movies' do
  @movies = Movie.all
  erb :movies
end

#new
get '/movies/new' do
  erb :new
end

#creatre
post '/movies' do
  #create a movie based on information
  #entered in the form
  title=params['movie_title']
  screenwriter=params['screenwriter']
  director=params['director']

  Movie.create({title: title, director: director, screenwriter: screenwriter})

  redirect '/movies'
end

