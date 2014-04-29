require 'sinatra'
require 'sinatra/reloader'

get '/' do
	"yo"
end

get '/name/:first_name' do
	
	first_name = params[:first_name]
	"Yo #{first_name}"

end

get '/name/:first_name/:last_name' do 
	first_name = params[:first_name]
	last_name = params[:last_name]
	"hey there #{first_name} #{last_name}"

end