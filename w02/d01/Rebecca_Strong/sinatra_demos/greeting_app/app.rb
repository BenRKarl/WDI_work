require 'sinatra'
require 'sinatra/reloader'



get '/' do
  "Welcome :)"
end

get '/name/:first_name' do
#NB. :first_name is identified as a variable by the colon as in the attr_accessor pattern

  first_name = params[:first_name]

  "Greetings #{first_name}"
end

get '/name:first_name/:last_name' do
  first_name = params[:first_name]
  last_name = params[:last_name]
    "Greetings #{first_name} #{last_name}. You are great."
  end
