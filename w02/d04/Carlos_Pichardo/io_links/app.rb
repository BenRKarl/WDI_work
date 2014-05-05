require 'sinatra'
require 'faker'
require 'sinatra/reloader'

get '/' do 

	erb :index
end

get '/links' do 

	@links_file = open("links.csv", "r")
	
	
	erb :links

end 