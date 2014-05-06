require 'bundler'
Bundler.require

require_relative 'models/lunch'

get '/' do
  redirect '/lunches'
end


# index
get '/lunches' do
  @lunches = Lunch.all
  erb :index
end


# new
get '/lunches/new' do
  erb :new
end

# create
post '/lunches' do
  lunches = params['lunch_name']
  restaurants = params['restaurant']
  new_lunch = Lunch.create({'lunch_name'=> lunch_name, 'restaurant'=>restaurant})
  redirect "/lunches/#{ new_lunch.id }"
end


# edit
get '/lunches/:id/edit' do
  id = params[:id]
  @lunch = Lunch.find(id)
  erb :edit
end


# update
post '/lunches/:id' do
  id = params[:id]
  lunch = Lunch.find(id)
  lunch.lunch_name = params['lunch_name']
  lunch.restaurant = params['restaurant']
  lunch.save
  redirect "/lunches/#{ lunch.id }"
end

# show
get '/lunches/:id' do
  @lunch = Lunch.find(params[:id])
  erb :show
end