require'bundler'
Bundler.require

require_relative 'models/user'
require_relative 'models/splarkle'

require_relative 'config.rb'

get '/' do 
  @users = User.all
  erb :index
end

# create new user
get '/users/new' do 
  erb :'users/new'
end

post '/users' do 
  username = params[:username]
  new_user = User.create({username: username})
  redirect "/users/#{ new_user.id }"
end 

# show user info
get '/users/:id' do 
  @user = User.find(params[:id])
  erb :'users/show'
end

# create new splarkle
get '/users/:id/splarkles/new' do 
  @user = User.find(params[:id])
  erb :'splarkles/new'
end

post '/users/:id/splarkles' do 
  user = User.find(params[:id])
  message = params[:message]
  new_splarkle = Splarkle.create({message: message})
  user.splarkles << new_splarkle
  redirect "/users/#{params[:id]}"
end 

# delete splarkle
delete '/users/:user_id/splarkles/:splarkle_id' do 
  Splarkle.delete(params[:splarkle_id])
  redirect "/users/#{params[:user_id]}"
end

# delete user
delete '/users/:id' do 
  User.delete(params[:id])
  redirect "/"
end







