
require 'bundler/setup'
Bundler.require

require_relative "models/user"
require_relative "models/caw"
require_relative "config.rb"


get '/' do
  erb :index
end


get '/users/new' do
  erb :'users/new'
end

get '/users/:id' do
  id = params[:id]
  @user = User.find(id)
  erb :'users/show'
end


post '/users' do
  username = params[:username]
  new_user = User.create({username: username})
  redirect "/users/#{new_user.id}"
end


# get '/console' do
#   binding.pry
# end

