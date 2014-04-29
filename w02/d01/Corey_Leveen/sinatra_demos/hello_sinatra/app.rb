require 'sinatra'
require 'sinatra/reloader'

get '/hi' do
  word = ['happy', 'sad', 'joyous'].sample
  "Helloe. You seem #{word}"
end

