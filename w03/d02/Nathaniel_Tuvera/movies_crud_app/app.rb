require 'bundler'
Bundler.require

require_relative 'models/movie'


ActiveRecord::Base.establish_connection(
  :adapter => 'postgresql',
  :database => 'movies_app'
)


get '/' do
  redirect '/movies'
end

#index
get '/movies' do
  @movies = Movie.all
  erb :index
end

get '/movies/new' do
  erb :new
end

# create
post '/movies' do
  title = params['movie_title']
  director = params['movie_director']
  screenwriter = params['movie_screenwriter']
  Movie.create(:title => title, :director => director, :screenwriter => screenwriter)
  redirect '/movies'
end



# delete
delete '/movies/:id' do
  Movie.delete()
  redirect '/movies'
end
