require "bundler"
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

post '/users' do
	username = params[:username]
	new_user = User.create({username: username})
	redirect "/users/#{new_user.id}"
end

get '/users/:id' do
	@user = User.find(params[:id])
	erb :'users/show'
end

get '/users/:id/caws/new' do
	@user = User.find(params[:id])
	erb :'/caws/new'
end

post '/users/:id/caws' do
	message = params[:message]
	user = User.find(params[:id])
	new_caw = Caw.create({message: message})
	user.caws << new_caw
	redirect "/users/#{params[:id]}"
end

delete '/users/:user_id/caws/:caw_id' do
	Caw.delete(params[:caw_id])
  redirect '/users/#{params[:user_id]}'
end