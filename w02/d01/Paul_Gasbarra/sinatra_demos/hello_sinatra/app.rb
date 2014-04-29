require "sinatra"
require "sinatra/reloader"

get '/hi' do
  word = ['happy', 'sad', 'joyous'].sample
  "<h1>Hey man, you seem #{word}.</h1>"
end
