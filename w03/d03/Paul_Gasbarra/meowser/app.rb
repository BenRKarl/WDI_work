require 'bundler'
Bundler.require

require_relative 'models/user'
require_relative 'models/meow'

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
  @user_id = new_user.id
  redirect "/users/#{@user_id}"
end

get '/users/:id' do
  @user = User.find(params[:id])
  erb :'users/show'
end

#create
get '/users/:id/meows/new' do
  erb :'meows/new'
end
#read
post '/users/:id/meows/new' do
  user = User.find(params[:id])
  message = params[:message]
  new_meows = Meow.create({message: message})
  user.meows << new_meow
  redirect "/users/#{params[:user_id]}"
end


#delete
delete '/users/:user_id/meows/:meow_id' do
  meow_id = params[:meow_id]
  Meow.delete(meow_id)
  redirect "/users/#{params[:user_id]}"
end

#console hack
get '/console' do
  binding.pry
end
