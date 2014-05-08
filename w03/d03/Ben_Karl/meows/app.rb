require "bundler"
Bundler.require

require_relative "models/user"
require_relative "models/meow"
require_relative "config.rb"

# index
get "/" do
  @users = User.all
  erb :index
end

# user new
get "/users/new" do
  erb :"users/new"
end

#user create
post "/users" do
  username = params[:username]
  new_user = User.create({username: username})
  redirect "/users/#{ new_user.id }"
end

# user show
get "/users/:id" do
  user_id = params[:id]
  @user = User.find(user_id)
  erb :"users/show"
end

#meow create
get "/users/:id/meows/new" do
  @user = User.find(params[:id])
  erb :"meows/new"
end

#meow show
post "/users/:id/meows" do
  user = User.find(params[:id])
  user.meows << Meow.create({message: params[:message]})
  redirect "/users/#{params[:id]}"
end

delete "/users/:user_id/meows/:meow_id" do
  Meow.delete(params[:meow_id])
  redirect "/users/#{ params[:user_id] }"
end

