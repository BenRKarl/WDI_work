require 'sinatra'
require 'sinatra/reloader'

get '/hi' do 
  word = ['happy', 'sad', 'joyous'].sample
  "Hello WDI! You seem #{word}"	
end
	