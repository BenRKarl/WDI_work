class UsersController < ApplicationController

  def index 
    @users = User.all 

  end

  def new 

  end

  def create
    username = params.require(:user).permit(:username)
    new_user = User.create(username)
    redirect_to "/users/#{new_user.id}"
  end

  def edit
    @user = User.find(params[:id])

  end

  def update
    edited_user = User.find(params[:id])
    edited_user.update(params.require(:user).permit(:username))
    redirect_to "/users/#{edited_user.id}"
  end

  def show
    @user = User.find(params[:id])

  end

  def destroy
    User.delete(params[:id])
    redirect_to '/users'
  end


end


# root 'users#index'
#   get 'users' => 'users#index'
#   get 'users/new' => 'users#new'
#   post 'users' => 'users#create'
#   get 'users/:id/edit' => 'users#edit'
#   put 'users/:id' => 'users#update'
#   get 'users/:id' => 'users#show'
#   delete 'users/:id' => 'users#destroy'