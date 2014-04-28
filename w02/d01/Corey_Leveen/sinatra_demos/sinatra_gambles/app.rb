require 'sinatra'
require 'sinatra/reloader'

get '/' do
  erb :games
end
