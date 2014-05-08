require 'bundler'
Bundler.require

require_relative 'models/user'
require_relative 'models/gawp'

require_relative 'config.rb'

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
  redirect "/users/#{ new_user.id }"
end

get '/users/:id' do
    @user = User.find(params[:id])
    erb :'users/show'
end

get '/users/:id/gawps/new' do
  @user_id = params[:id]
  @user = User.find(params[:id])
  erb :'gawps/new'
end

post '/users/:id/gawps' do
  message = params[:message]
  user = User.find(params[:id])
  new_gawp = Gawp.create({message: message})
  user.gawps << new_gawp
  redirect "/users/#{params[:id]}"
end

delete '/users/:user_id/gawps/:gawp_id' do
  Gawp.delete(params[:gawp_id])
  redirect "/users/#{params[:user_id]}"
end

get '/console' do
  binding.pry
end
