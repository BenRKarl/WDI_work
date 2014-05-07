require 'bundler'
Bundler.require

require_relative 'models/friend'
require_relative './config'

#index
get '/friends' do
  @friends = Friend.all
  erb :index
end

get '/friends/new' do
  erb :new
end

#create
post '/friends' do
  friend = Friends.create(username: params['username'])
  friend.update_image
  friend.save
  redirect "/friends/#{ friend.id }"
end

#edit



#show
get '/friends/:id' do
  @friend = friend.find(params[:id])
  erb :show
end

# edit
get '/friends/:id/edit' do
  @friend = Friend.find(params[:id])
  erb :edit
end

put '/friends/:id' do
  friend = Friend.find(params[:id])
  friend.username = params[:username]
  friend.update_image
end
