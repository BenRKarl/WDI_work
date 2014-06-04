class UsersController < ApplicationController

def index
  @users = User.all
  respond_to do |format|
    format.json { render :json => @users.to_json }
    format.html
  end
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
  redirect_to users_path
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
