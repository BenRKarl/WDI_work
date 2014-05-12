class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def new
    # Form
  end

  def create
    username = params.require(:user).permit(:username)
    new_user = User.create(username)
    redirect_to "/users/#{new_user.id}"
  end

  def edit
    @user = User.find(params[:id])
    # Form
  end

  def update
    edited_user = User.find(params[:id])
    edited_user.update(params.require(:user).permit(:username))
    redirect_to "/users/#{edited_user.id}"
  end

  def show
    @user = User.find(params[:id])
    # Show user again
  end

  def destroy
    User.delete(params[:id])
    redirect_to '/users'
  end
end
