require 'sinatra'
require 'sinatra/reloader'

get '/hi' do
  word = ['happy', 'sad', 'joyous'].sample
  "hello to me. you seem #{word}."
end

get '/this_is_where_to_go' do
  word = ['happy', 'sad', 'joyous'].sample
  "This is what to do: #{word}."
end
