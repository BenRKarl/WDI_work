require 'sinatra'
require 'sinatra/reloader'

get '/' do
erb :map
end

get '/location/:locale' do
  locale = params[:locale] #:locale is the forest in the url path localhost:4567/location/forest
  @found_item = ['gold', 'magic spells', 'soup'].sample
  erb :location #instance variable
end





