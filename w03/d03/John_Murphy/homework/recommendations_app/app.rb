require 'bundler'
Bundler.require

require './config'
require './models/recommendation'
require './models/user'

get '/' do
  redirect '/users'
end

get '/users' do
@users = User.all
  erb :index
end

get '/users/new' do
  erb :'users/new'
end

post '/users' do
  name = params[:name]
  email = params[:email]
  new_user = User.create({name: name, email: email})
  redirect "/users/#{new_user.id}"
end

get '/users/:id' do
  id = params[:id]
  @user = User.find(id)
erb :'users/show'
end

get '/users/:id/edit' do
@user = User.find(params[:id])
erb :'users/edit'
end

put '/users/:id' do
name = params[:name]
email = params[:email]
user = User.find(params[:id])
user.name = name
user.email = email
user.save
redirect "/users/#{user.id}"
end

delete '/users' do

end
