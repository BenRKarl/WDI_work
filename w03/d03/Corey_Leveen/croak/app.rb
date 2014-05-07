require 'bundler'
Bundler.require

require_relative 'models/user'
require_relative 'models/croak'
require_relative 'config.rb'

#display users
get '/' do
  @users = User.all
  erb :index
end

#display create user page
get '/users/new' do
  erb :'users/new'
end

#create new user
post '/users' do
  username = params[:username]
  new_user = User.create({username: username})
  redirect "/users/#{ new_user.id }"
end

#show the user
get '/users/:id' do
 @user = User.find(params[:id])
 erb :'users/show'
end

#display create croak page
get '/users/:id/croaks/new' do
  @user = User.find(params[:id])
  erb :'croaks/new'
end

#create new croak
post '/users/:id/croaks' do

  user = User.find(params[:id])
  croak = params[:croak]
  new_croak = Croak.create({message: croak})
  user.croaks << new_croak
  redirect "/users/#{params[:id]}"
end

#delete croaks
delete '/users/:user_id/croaks/:id' do
  user_id = params[:user_id]
  Croak.delete(params[:id])
  redirect "/users/#{ user_id }"
end
