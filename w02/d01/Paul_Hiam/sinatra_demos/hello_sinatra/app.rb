require 'sinatra'
require 'sinatra/reloader'
get '/hi' do
	word = ['happy', 'sad', 'jubilant'].sample
  "Hello WDI-Proto fools you best be feeling #{word}"
end