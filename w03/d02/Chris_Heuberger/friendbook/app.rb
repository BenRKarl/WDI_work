require 'bundler'
Bundler.require

require_relative 'models/friend'
require_relative './config'

get '/friends' do
  @friends = Friend.all
  erb :index
end

post '/friends' do
  friend = Friend.create(username: params['username'])
  friend.update_image
  friend.save
  redirect "/friends/#{ friend.id }"
end

get '/friends/new' do
  erb :new
end

get 'friends/:id' do
  @friend = Friend.find(params[:id])
  erb :show
end

get 'friends/:id/edit' do
  @friend = Friend.find(params[:id])
  erb :edit
end

put '/friends/:id' do
  friend = Friend.find(params[:id])
  friend.username = params[:username]
  friend.update_image
  friend.save
  redirect "/friends/#{ friend.id }"
end
