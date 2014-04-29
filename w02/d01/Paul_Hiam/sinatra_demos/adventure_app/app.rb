require 'sinatra'
require 'sinatra/reloader'

get '/' do
	erb :map
end

get '/location/:local' do
  @local = params[:local]
  @found_item = ['hat', 'hook', 'ball', 'malodor'].sample
  erb :location
end