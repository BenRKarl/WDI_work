require 'bundler'
Bundler.require

require_relative 'models/user'
require_relative 'models/ribbit'

require_relative 'config.rb'

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
  @user = User.find(params[:id])
  erb :'users/show'
end

get '/users/:id/ribbits/new' do
  @user = User.find(params[:id])
  erb :'ribbits/new'
end

post '/users/:id/ribbits' do
  user = User.find(params[:id])
  message = params[:message]
  new_ribbit = Ribbit.create({message: message})
  user.ribbits << new_ribbit
  redirect "/users/#{params[:id]}"
end

delete '/users/:user_id/ribbits/:ribbit_id' do
  ribbit_id = params[:ribbit_id]
  Ribbit.delete(ribbit_id)
  redirect "/users/#{params[:user_id]}"
end
