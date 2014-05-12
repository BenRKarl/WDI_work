class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def create
    new_user = User.create(params.require(:user).permit(:user_name))
    redirect_to "/users/#{new_user.id}"
  end

  def show
    @user = User.find(params[:id])
  end

  def edit
    @user = User.find(params[:id])

    end

  def update
    user = User.find(params[:id])
    User.update(params.require(:user).permit(:user_name))
    redirect_to 'user/#{user.id}'
  end



end
