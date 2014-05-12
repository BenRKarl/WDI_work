class UsersController < ApplicationController

# get 'users' => 'users#index'
def index
  @users = User.all
end

# get 'users/new' => 'users#new'
def new
  #just show me the form
end

# post 'users' => 'users#create'
def create
  new_user = User.create( params.require(:user).permit(:username) )
  redirect_to "/users/#{new_user.id}"
end

# get 'users/:id/edit' => 'users#edit'
def edit
  @user = User.find(params[:id])
  # just show me the form
end

# put 'users/:id' => 'users#update'
def update
  edited_user = User.find(params[:id])
  edited_user.update( params.require(:user).permit(:username) )
  redirect_to "/users/#{edited_user.id}"
end

# get 'users/:id' => 'users#show'
def show
  @user = User.find(params[:id])
  # show me the user page
end

# delete 'users/:id' => 'users#destroy'
def destroy
  User.delete(params[:id])
  redirect_to '/users'
end


end