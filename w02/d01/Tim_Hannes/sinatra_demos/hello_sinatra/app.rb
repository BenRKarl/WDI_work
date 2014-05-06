require 'sinatra'
require 'sinatra/reloader'

get '/hi' do
  word = ['happy', 'sad', 'joyous', 'awesome', 'mad'].sample
  "Hello WDI-Proto!!! You seem #{word}."
end
