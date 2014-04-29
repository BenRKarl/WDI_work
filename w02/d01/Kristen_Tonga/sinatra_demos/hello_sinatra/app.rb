require 'sinatra'
require 'sinatra/reloader'

get '/hi' do
  word = ['happy','blue','furious','suicidal','estatic','high'].sample
  "Hello WDI World of Proto, and the almost web!!!! Are you #{word}?"
end
