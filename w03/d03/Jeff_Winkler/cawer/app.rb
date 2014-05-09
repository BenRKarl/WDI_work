
require 'bundler/setup'
Bundler.require

require_relative "models/user"
require_relative "models/caw"
require_relative "config.rb"

get '/' do
  @users = User.all
  erb :index
end

get '/users/new' do
  erb :'users/new'
end

get '/users/:id' do
  id = params[:id]
  @user = User.find(id)
  erb :'users/show'
end

post '/users' do
  username = params[:username]
  new_user = User.create({username: username})
  redirect "/users/#{new_user.id}"
end

get '/users/:id/caws/new' do
  @user_id = params[:id]
  @user = User.find(@user_id)
  erb :'caws/new'
end

post '/users/:id/caws' do
  id = params[:id]
  message = params[:message]
  Caw.create({message: message, user_id: id})
  #user.caws << new_caw
  redirect "/users/#{id}"
end

delete '/users/:user_id/caws/:caw_id' do
  cid = params[:caw_id]
  Caw.delete(cid)
  redirect "/users/#{params[:user_id]}"
end


# get '/console' do
#   binding.pry
# end

