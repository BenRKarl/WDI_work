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

