require 'bundler'
Bundler.require

require_relative 'models/user'
require_relative 'models/bzzz'

require_relative 'config'

get '/' do
  @users = User.all
  erb :index
end

#new user
get '/users/new' do
  erb :'users/new'
end
post '/users' do
  username = params[:username]
  new_user = User.create({username: username})
  redirect "/users/#{new_user.id}"
end

#show
get '/users/:id' do
  @user = User.find(params[:id])
  erb :'users/show'
end

#new buzzz
get '/users/:id/bzzzs/new' do
  @user = User.find(params[:id])
  erb :'bzzzs/new'
end
post '/users/:id/bzzzs' do
  user = User.find(params[:id])
  message = params[:message]
  new_bzzz = Bzzz.create({message: message})
  user.bzzzs << new_bzzz

  redirect "/users/#{params[:id]}"
end

#delete bzzzs
delete '/users/:id_user/bzzzs/:id_bzzz' do
  Bzzz.delete(params[:id_bzzz])
  redirect "/users/#{params[:id]}/bzzz"
end










#HACK. DON"T DO BUT...
get '/console' do
  binding.pry
end
