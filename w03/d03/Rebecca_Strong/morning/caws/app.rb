require 'bundler'
Bundler.require

require_relative 'models/user'
require_relative 'models/caw'

require_relative 'config.rb'


#index
get '/' do
  @users = User.all
  erb :index
end

# new

get '/users' do
@users = User.all
erb :index
end


get '/users/new' do
  erb :'users/new'
end


#create
post'/users' do
  username = params[:username]
  new_user = User.create({username: username})
  redirect "/users/#{new_user.id }"
end

#show
get '/users/:id' do
  @user = User.find(params[:id])
erb :'users/show'

end


# show
get'/users/:id/caws/new' do
  # @user_id = params[:id]
  @user = User.find(params[:id])
  erb :'caws/new'
end

#CREATE
post '/users:id/caws' do
user = User.find(params[:id])

message = params[:message]
new_caw = Caw.create({message: message})

user.caws << new_caw
# above means UPDATE caws SET user_id=#{user.id} WHERE id=#{new_caw.id}

redirect "/users/#{params[:id]}"
  end



#DELETE
delete '/users/:user_id/caws/:caw_id' do
Caw_id = params[:caw_id]
Caw.delete(caw_id)

redirect "/users/#{params[:user_id]}"
end



get '/console' do
  binding.pry
end
