require 'bundler'
Bundler.require

get '/' do 
	@num_squares = 1
	erb :index
end

get '/


# new
get '/movies/new' do
  erb :new
end
