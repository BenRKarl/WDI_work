require 'bundler'
Bundler.require

require_relative 'models/movie'

# establishes connection to database movies_app
ActiveRecord::Base.establish_connection(
	:adapter => 'postgresql',
	:database => 'movies_app'
)

get '/' do
	erb :index
end

get '/movies' do
	# pulls all data from Movie class in movie.rb file
	@movies = Movie.all
	erb :movies
end

get '/movies/new' do
	erb :new
end

post '/movies' do # creates new movie base on input from form
  title = params['movie_title']
  director = params['movie_director']
  screenwriter = params['movie_screenwriter']
  # pass info from above params back into new row of database table
  Movie.create({:title => title, :director => director, :screenwriter => screenwriter})
  redirect '/movies'
end