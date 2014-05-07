require 'bundler'
Bundler.require

require_relative 'models/movie'

get '/' do
  erb :index
end

get '/movies' do
  @movies = Movie.all
  erb :movies
end

