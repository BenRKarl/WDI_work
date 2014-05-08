require 'bundler'
Bundler.require

require_relative 'models/user'
require_relative 'models/drink'

require_relative 'config.rb'

# shows index of all users
get '/users' do
  @users = User.all
  erb :index
end

# give user a form to fill out
get '/users/new' do
  erb :'users/new'
end

# accept params and add to users
post '/users' do
  username = params['username']
  new_user = User.create({username: username})
  redirect "/users/#{new_user.id}"
end

# shows individual user details
get '/users/:id' do
  id = params[:id]
  @user = User.find(id)
  erb :'users/show'
end

# allows creation by user of 'many' infomation
get '/users/:id/drinks/new' do
  @user = User.find(params[:id])
  erb :'drinks/new'
end

# appends data to user
post '/users/:id/drinks' do
  drink = params['drink']
  user = User.find(params['id'])
  new_drink = Drink.create({drink: drink})
  user.drinks << new_drink
  redirect "/users/#{user.id}"
end

# allows for deletion of drink(s)
delete '/users/:user_id/drinks/:drink_id' do
  Drink.delete(params[:drink_id])
  redirect "/users/#{params[:user_id]}"
end
