require 'bundler'
Bundler.require

require_relative 'models/user'
require_relative 'models/bloop'

require_relative 'config.rb'

# index
get '/' do
  @users = User.all
  erb :index
end

# new users - GET
get '/users/new' do
  erb :'users/new'
end

# create new users - POST
post '/users' do
  username = params[:username]
  new_user = User.create({username: username})
  redirect "/users/#{ new_user.id }"
end

# show users by ID
get '/users/:id' do
  @user = User.find(params[:id])
  erb :'users/show'
end


get '/users/:id/bloops/new' do
  # @user_id = User.find(params[:id])
  @user = User.find(params[:id])
  erb :'bloops/new'
end

post '/users/:id/bloops' do
  user = User.find(params[:id])

  message = params[:message]
  new_bloop = Bloop.create({message: message})

  # "UPDATE bloops SET user_id={#user.id} WHERE id=#{ new_bloop.id}""
  user.bloops << new_bloop         # activerecord syntax to UPDATE, NOT inserting an ARRAY

  redirect "/users/#{params[:id]}"
end

delete '/users/:user_id/bloops/:bloop_id' do
  bloop_id = params[:bloop_id]
  Bloop.delete(bloop_id)
  redirect "/users/#{params[:user_id]}"
end
