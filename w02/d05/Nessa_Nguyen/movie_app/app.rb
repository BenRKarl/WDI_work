require 'sinatra'
require 'sinatra/reloader'


require './lib/omdb'
require './lib/movie'



get '/' do 
	erb :index	
end


get '/movie' do 
 @movie = OMDB.find(params[:movie_name])
 erb :show
end
