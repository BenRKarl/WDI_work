require 'sinatra'
require 'sinatra/reloader' #instantly reloads

get '/' do
  erb :map
end


get '/location/:local' do
  @local = params[:local]
  @found_item = ['gold', 'magic spells', 'soup'].sample
  erb :location #render location erb file
end
