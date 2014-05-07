require'bundler'
Bundler.require

require_relative 'models/user'
require_relative 'models/splarkle'

require_relative 'config.rb'

get '/' do 
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






get '/console' do 
  binding.pry
end