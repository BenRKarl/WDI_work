require 'sinatra'
require 'sinatra/reloader'

get '/' do
  @question = "Hungry?"
  @prompt1 = "<a class= 'yes' href=/chinese>Starving.</a>"
  @prompt2 = "<a class= 'no' href=/wait>Not really.</a>"
  erb :main
end

get '/wait' do
  @question = "Wait a while."
  @prompt1 = "<a class= 'OK' href=/>OK</a>"
  erb :main
end

get '/chinese' do
  @question = "How about some Chinese food?"
  @prompt1 = "<a class= 'yes' href=/china_town>Yeah</a>"
  @prompt2 = "<a class= 'no' href=/mexican>Not feeling that.</a>"
  erb :main
end

get '/mexican' do
  @question = "Mexican?"
  @prompt1 = "<a class= 'yes' href=/east_harlem>Yeah</a>"
  @prompt2 = "<a class= 'no' href=/indian>Not feeling that.</a>"
  erb :main
end

get '/indian' do
  @question = "Indian?"
  @prompt1 = "<a class= 'yes' href=/curry_hill>Yeah</a>"
  @prompt2 = "<a class= 'no' href=/tough>Not feeling that.</a>"
  erb :main
end

get '/china_town' do
  @question = "Want to head to China Town?"
  @prompt1 = "<a class= 'yes' href=/>Sure</a>"
  @prompt2 = "<a class= 'no' href=/tough>That's too far.</a>"
  erb :main
end

get '/east_harlem' do
  @question = "East Harlem has the best Mexican."
  @prompt1 = "<a class= 'yes' href=/>OK</a>"
  @prompt2 = "<a class= 'no' href=/tough>That's too far.</a>"
  erb :main
end

get '/curry_hill' do
  @question = "I guess you'll just starve then."
  @prompt1 = "<a class= 'yes' href=/>OK</a>"
  @prompt2 = "<a class= 'no' href=/tough>That's too far.</a>"
  erb :main
end

get '/tough' do
  @question = "I guess you'll just starve then."
  @prompt1 = "<a class= 'yes' href=/>OK</a>"
  erb :main
end
