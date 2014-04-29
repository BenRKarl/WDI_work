require 'sinatra'
require 'sinatra/reloader'

get '/' do
  erb :map
end

get '/location/:local' do
  @local = params[:local]
  @found_item = ['a PBR', 'an American Spirit', 'the latest thing'].sample
  erb :location
end
