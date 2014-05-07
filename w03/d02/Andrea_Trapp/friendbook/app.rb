require 'bundler'
Bundler.require

require_relative 'models/friend'
require_relative './config'

get "/" do 
  redirect '/friends'
end


# index
get '/friends' do 
	@friends = Friend.all
	erb :index
end

#new  Attention: this has to be before "get 'friends/:id' do"
#     before otherwise it would try to find a friend with the id new 
get '/friends/new' do
	erb :new
end

# create
post '/friends' do
	friend = Friend.create(username: params['username'])
	friend.update_image
	friend.save
	redirect "/friends/#{friend.id}"
end

# show
get '/friends/:id' do 
	@friend = Friend.find(params[:id])
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
	friend.save
	redirect "/friends/#{friend.id}"
end

# delete
delete '/friends/:id' do
  Friend.delete(params[:id])
  redirect '/friends'
end



