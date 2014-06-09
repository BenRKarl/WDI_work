require 'bundler'
Bundler.require

require_relative 'models/user'
require_relative 'models/furry'

require_relative 'config.rb'

 #index
get '/' do
 	@users = User.all
 	erb :index
 end

get'/users/new' do
  erb :'users/new'
 end

post '/users' do
	username = params[:username]
	new_user = User.create({username: username})
	redirect "/users/#{ new_user.id }"
 end

 # show
 get '/users/:id' do
	@user = User.find(params[:id])
	erb :'users/show'
end

get 'users/:id/furrys/new' do
	@user = User.find(params[:id])
	erb :'furry/new'
end

post '/users/:id/furrys' do
	user = User.find(parmas[:id])
	message = params[:message]
	new_furry = Furry.create({message: message})
	user.furry << new_furry
	redirect "/users/#{params[:id]}"
end

delete '/users/:furry_id/furrys/:id' do
Furry.delete(params[:furry_id])
	redirect '/users/#{params[:user_id]}'  #all?
end





	
