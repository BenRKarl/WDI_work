require 'bundler'
Bundler.require

require_relative 'models/lunch'

get '/' do 
  redirect '/lunches'
end

get '/lunches' do
  @lunches = Lunch.all 
  erb :index
end

get 'lunches/new' do 

  erb :new
end

get 'lunches/random' do

  erb: random
end

post 'lunches/create' do
  lunch_name = params['lunch_name']
  restaurant = params['restaurant']
  new_meal = Lunch.create({'lunch_name'=> lunch_name, 'restaurant'=>restaurant})
  redirect "/lunches"

end


