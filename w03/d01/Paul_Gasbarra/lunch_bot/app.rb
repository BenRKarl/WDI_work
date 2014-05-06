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

get '/lunches/new' do
  erb :new
end

#create
post '/lunches/create' do
  lunch = params['lunch']
  restaurant = params['restaurant']
  new_lunch = Lunch.create({'lunch_name'=>lunch, 'restaurant'=>restaurant })
  redirect '/lunches'
end

#random
get 'lunches/random' do
  @lunch = Lunch.random
  erb :random
end
