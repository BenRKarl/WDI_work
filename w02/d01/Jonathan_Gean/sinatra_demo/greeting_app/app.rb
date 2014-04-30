require 'sinatra'
require 'sinatra/reloader'

get '/' do
  'Welcome'
end

get '/name/:first_name' do
  first_name = params[:first_name]
  "Greetings #{first_name}"
end

get'/name/:first_name/:last_name/:third_name' do
  first_name = params[:first_name]
  last_name = params[:last_name]
  third_name = params[:third_name]

  "Greetings #{first_name} #{last_name} #{third_name}"
end
