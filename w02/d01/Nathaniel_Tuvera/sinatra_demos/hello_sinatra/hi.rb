require 'sinatra'
require 'sinatra/reloader'

get '/hi' do
  word = ['happy', 'sad', 'joyous'].sample
  "Hello WDI-Proto Bob. You seem #{word}"
  end

Sinatra::Base.send :get, ("/") do
  "hello, wdi"
end
