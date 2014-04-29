require 'sinatra'
require 'sinatra/reloader'

get '/' do
  erb :home
end

get '/outside' do
  erb :outside
end

get '/homework' do
  erb :homework
end

get '/code' do
  erb :code
end

get '/how_long' do
  erb :how_long
end

get '/good_luck' do
  erb :good_luck
end

get '/no_hw' do
  erb :no_hw
end
