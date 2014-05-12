class UsersController < ApplicationController

  # root 'users#index'
  # get 'users' => 'users#index'
  def index
    @users = User.all
  end

  # get 'users/new' => 'users#new'

  def new
    # Form for new user
  end

  # post 'users' => 'users#create'
  def create
    User.create(params.require(:user).permit(:username))
    redirect_to "/users"
  end

  # get 'users/:id/edit' => 'users#edit'
  def edit
    @user = User.find(params[:id])

  end

  # put 'users/:id' => 'users#update'
  def update
    user = User.find(params[:id])
    user.update(params.require(:user).permit(:username))
    redirect_to '/users'
  end

  # get 'users/:id' => 'users#show'
  def show
    @user = User.find(params[:id])
  end

  # delete 'users/:id' => 'users#destroy'
  def destroy
    User.delete(params[:id])
    redirect_to '/users'
  end


end
