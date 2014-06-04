class UserController < ApplicationController

def index
  @users = User.all
end

def show
  @user = User.find(params[:id])
end

def edit
  @user = User.find(params[:id])
end

def update
  @user = User.find(params[:id])
  @user.update(user_params)
  redirect_to user_path(@user)
end

def destroy
  @user = User.find(params[:id])
  @user.delete
  redirect_to user_index_path
end

def new
end

def create
  @user = User.create(user_params)
  redirect_to user_path(@user)
end

private

def user_params
  params.require(:user).permit(:name)
end

end
