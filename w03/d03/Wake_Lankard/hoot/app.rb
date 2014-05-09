require 'bundler'
Bundler.require

require_relative 'models/user'
require_relative 'models/hoot'
require_relative 'config.rb'

#index
get '/' do
  @users = User.all
  erb :index
end

#new
get '/users/new' do
  erb :'users/new'
  end

#create
post '/users' do
  username = params[:username]
  new_user = User.create({username: username})
  redirect "/users/#{ new_user.id}"
end

#show
get '/users/:id' do
  @user = User.find(params[:id])

  erb :'users/show'
end



get '/users/:id/hoots/new' do
  @user = User.find(params[:id])
  erb :'hoots/new'
end

post '/users/:id/hoots' do
  hoot = params[:hoot]
  user = User.find(params[:id])
  new_hoot = Hoot.create({message: hoot})

  user.hoots << new_hoot

  redirect "/users/#{ params[:id] }"
end

delete '/users/:user_id/hoots/:hoot_id' do
  Hoot.delete(params[:hoot_id])

  redirect "/users/#{ params[:user_id] }"
end




get '/console' do

 binding.pry
end

