require 'sinatra'
require 'sinatra/reloader'

get '/' do
  erb :map
end

get 'location/:local' do
  local = params[:local]
  erb :location
end
