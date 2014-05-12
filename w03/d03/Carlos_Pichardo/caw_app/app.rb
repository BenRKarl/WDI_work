require 'bundler'
Bundler.require

require_relative 'models/user'
require_relative 'models/caw'

require_relative 'config.rb'

# index
get '/' do 

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
get 'users/:id' do 
@user = User.find(params[:id])
erb :'users/show'

end 

get '/users/:id/caws/new' do
	#Obtain the user
	@user_id = params[:id]
	@user = User.find(params[:id])
	erb :'caws/new'

end 

	get '/users/:id/caws' do 
		message = params[:message]
		user = User.find(params[:id])
		new_caw = Caw.create({message: message})

		#SQL statement bellow: UPDATE caws SET user_id=#{user.id} WHERE id=#{ new_caw.id }
		user.caws << new_caw
		redirect "/user/#{params[:id]}"
end 

delete '/users/:user_id/caws/:caw_id' do 
	Caw.delete(params[:caw_id])

redirect "/users/#{params[:user_id]}"
end 