
require 'bundler/setup'
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

get '/movies/new' do
  erb :new
end

post '/movies' do
  title = params["title"]
  director = params["director"]
  screenwriter = params["screenwriter"]

  Movie.create({:title => title, :director => director, :screenwriter => screenwriter})
  redirect '/movies'
end
