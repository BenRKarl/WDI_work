require 'bundler'
Bundler.require

require_relative 'models/lunches'

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


post '/lunches' do
  lunch_name = params[:lunch_name]
  restaurant = params[:restaurant]
  Lunch.create({'lunch_name' => lunch_name, 'restaurant' => restaurant, 'picked_count' => 0})
  redirect "/lunches"
end


get '/lunches' do
  @lunches = Lunch.all
  erb :index
end


get '/lunches/random' do
  @rand_lunch = Lunch.random    
  erb :show
end
