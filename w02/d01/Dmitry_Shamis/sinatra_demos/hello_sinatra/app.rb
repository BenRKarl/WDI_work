require 'sinatra'
require 'sinatra/reloader'

get '/hi' do
  word = ['happy', 'sad', 'joyous'].sample
  "Hello World, you seem #{word}!!!!!"
end
