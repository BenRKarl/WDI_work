require 'bundler'
Bundler.require #brings in all dependencies

require_relative 'models/movie' #brings in movie.rb to our /movies get request



ActiveRecord::Base.establish_connection( #connects ActiveRecord
  :adapter => 'postgresql', #we are using postgres
  :database => 'movies_app' #name of our db
  )



get '/' do
  erb :index #refer to index.erb
end

get '/movies' do
  @movies = Movie.all #display all movies
  erb :movies #refer to movies.erb
end
