require 'bundler'
Bundler.require

require_relative 'models/user'
require_relative 'models/grumble'

require_relative 'config.rb'

get '/' do
  @users = User.all
  erb :index
end

get '/users/new' do
  erb :'users/new'
end

post '/users' do
  username = params["username"]
  new_user = User.create({username: username})
  redirect "/users/#{ new_user.id }"
end

get '/users/:id' do
  id = params[:id]
  @user = User.find(id)
  erb :'users/show'
end

get '/users/:id/grumbles/new' do
  @user = User.find(params[:id])
  erb :'grumbles/new'
end

post '/users/:id/grumbles' do
  grumble = params["message"]
  user = User.find(params[:id])
  new_grumble = Grumble.create({message: grumble})
  user.grumbles << new_grumble
  redirect "/users/#{params[:id]}"
end

delete '/users/:user_id/grumble/:grumble_id' do
  Grumble.delete(params[:grumble_id])
  redirect "users/#{params[:user_id]}"
end
