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

# index
get '/movies' do
  @movies = Movie.all #display all movies
  erb :movies #refer to movies.erb
end

# new
get '/movies/new' do  #adding a new movie
  erb :new
end

# create
# post '/movies' do
#   # create a new movie and add it
#   # based on the info entered in the form.
#   title = params['movie_title']
#   director = params['movie_director']
#   screenwriter = params['movie_screenwriter']
#   Movie.create({:title => title, :director => director, :screenwriter => screenwriter})
#   # the above uses .create from AR to create a new item in db using params from the form.
#   redirect '/movies'
# end
post '/movies' do
  title = params['movie_title']
  director = params['movie_director']
  screenwriter = params['movie_screenwriter']
  Movie.create({:title => title, :director => director, :screenwriter => screenwriter})
  redirect '/movies'
end
