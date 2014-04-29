require 'sinatra'
require 'sinatra/reloader'

get '/' do
	erb :map     # go and render "map.erb" in the views-Folder
end


get '/location/:local' do
	@local = params[:local]
	@found_item = ['gold','magic spells','soup'].sample
	erb :location

end