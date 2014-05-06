require 'bundler'
Bundler.require

require_relative 'models/movie'


ActiveRecord::Base.establish_connection(
  :adapter => 'postgresql',
  :database => 'movie_app'
);

get '/' do
  erb :index
end


get '/movies' do 
  @movies = Movie.all
  erb :movies
end