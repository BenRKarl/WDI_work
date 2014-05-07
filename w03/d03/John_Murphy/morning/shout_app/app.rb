require 'bundler'
Bundler.require

require './models/user'
require './models/shout'
require './config.rb'


get '/' do
  @users = User.all
  erb :index
end

get '/users/new' do

  erb :'users/new'
end

post '/users' do
  username = params[:username]
  new_user = User.create({username: username})
  redirect "/users/#{ new_user.id }"
end

get '/users/:id' do
  id = params[:id].to_i
  @user = User.find(id)
  @shouts = @user.shouts
  erb :'users/show'
end

get '/users/:id/shouts/new' do
  @id = params[:id]
  erb :'shouts/new'
end

post '/users/:id/shouts' do
  message = params[:message]
  id = params[:id]
  user = User.find(id)
  new_shout = Shout.create(message: message)
  user.shouts << new_shout
  redirect "/users/#{params[:id]}"
end

delete '/users/:user_id/shouts/:shout_id' do
  Shout.delete(params[:shout_id])
  id = params[:user_id]
  redirect "/users/#{id}"
end

get '/console' do
  binding.pry
end
