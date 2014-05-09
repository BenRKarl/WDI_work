require 'bundler'
Bundler.require

require './config.rb'
require './models/kitten'

get '/kittens/random' do
  erb :index
end

post '/kittens' do

end

post '/users' do
  username = params[:username]
  new_user = User.create({username: username})
  redirect "/users/#{ new_user.id }"
end

post '/users/:id/caws' do
  user = User.find(params[:id])
  message = params[:message]
  new_caw = Caw.create({message: message})
  user.caws << new_caw
  redirect "/users/#{params[:id]}"
end
