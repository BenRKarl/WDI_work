require 'bundler'
Bundler.require

require_relative 'models/user'
require_relative 'models/caw'

require_relative 'config.rb'

#########################   Users   ############################

# index
get '/' do  
  @users = User.all
  erb :index
end

# new
get '/users/new' do 
  erb :'users/new'
end

# create
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

# delete
delete '/users/:user_id' do  
    User.delete(params[:caw_id])
    redirect "/users"
end

#########################   Caws   ############################

# new
get '/users/:id/caws/new' do
  @user = User.find(params[:id])
  erb :'caws/new'
end

# create
post '/users/:id/caws' do  
  user = User.find(params[:id])

  message = params[:message]
  new_caw = Caw.create({message: message})
  
  # NOT do this: new_caw = Caw.create({message: message, user_id: user_id})
  # INSTEAD DO this: "UPDATE caws SET user_id=#{user.id} WHERE id=#{ new_caw.id }"
  user.caws << new_caw  # !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!

  redirect "/users/#{params[:id]}"
end

# show
get '/caws/:id' do 
  @caw = Caw.find(params[:id])
  erb :'caws/show'
end


# delete
delete '/users/:user_id/caws/:caw_id' do  
    Caw.delete(params[:caw_id])
    redirect "/users/#{params[:user_id]}"
end


get '/console' do  
  binding.pry
end

