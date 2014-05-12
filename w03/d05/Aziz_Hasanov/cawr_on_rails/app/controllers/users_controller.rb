class UsersController < ApplicationController
	def index
		@users = User.all
	end
	def new
		# @new_user = User.find(params[:id])
	end
	def create
		@new_user = User.create( params.require(:user).permit(:username) )
		redirect_to "/users/#{@new_user.id}"
	end
	def edit
		@edit_user = User.find(params[:id])
	end
	def update
		@update_user = User.find(params[:id])
		@update_user.update( params.require(:user).permit(:username) )
		redirect_to "/users/#{@update_user.id}"
	end
	def show
		@show_user = User.find(params[:id])
	end
	def delete
		User.delete(params[:id])
		redirect_to "/users"
	end
end