require 'bundler'
Bundler.require

require_relative 'models/user'
require_relative 'models/baah'
require_relative 'config.rb'

get '/' do
  @users = User.all
erb :index
end


# get '/console' do
#   binding.pry
# end

#create
get '/users/new' do
  erb :'users/new'
end
post '/users' do
 username = params[:username]
 new_user = User.create({username: username})
 redirect "/users/#{ new_user.id }"
end
#read
get '/users/:id' do
  @user = User.find(params[:id])
  erb :'users/show'
end

#create caws
get '/users/:id/baahs/new' do
  @user_id = params[:id]
  @user    = User.find(params[:id])
  erb :'baahs/new'
end

post '/users/:id/baahs' do
  user    = User.find(params[:id])

  message = params[:message]
  new_baah   = Baah.create(message: message)
  # "UPDATE baahs, SET user_id=#{user.id} WHERE id=#{new_baah}""
  user.baahs << new_baah

  redirect "/users/#{params[:id]}"
end

delete '/users/:user_id/baahs/:baah_id' do
  @baah_id = params[:baah_id]
  @user_id = params[:user_id]

  Baah.delete(params[:baah_id])

  redirect "/users/#{@user_id}"

end

#update user
get '/users/:id/edit' do
  
end

put '/users/:id' do

end
#delete user
delete '/users/:id' do

end