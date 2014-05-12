class UsersController < ApplicationController

	def index
		@users = User.all
	end

	def new
		#form
	end

	def create
		@user = User.create(params.require(:user).permit(:username))

		redirect_to '/users'
	end

	def edit
		@user = User.find(params[:id])
		#Show form
	end

	def update
		edited_user = User.find(params[:id])
		edited_user.update(params.require(:user).permit(:username)) 
    @user = edited_user
	end	

	def show 
		@user = User.find(params[:id])
	end


	def destroy
		User.delete(params[:id])
		redirect_to "/users"
	end

end


#  get 'users' => 'users#index'
#  get 'users/new' => 'users#new'
#  post 'users' => 'users#create'
#  get 'users/:id/edit' => 'users#edit'
#  put 'users/:id' => 'users#update'
#  get 'users/:id' => 'users#show'
#  delete 'users/:id' => 'users#destroy'
