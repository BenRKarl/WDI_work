class UsersController < ApplicationController

#root 'users#index'
#get 'users' => 'users#index'
def index
  @users = User.all
end

#get 'users/new' => 'users#new'
def new
end

#post 'users' => 'users#create'
def create
  new_user = User.create(params.require(:user).permit(:username))
  redirect_to "/users/#{ new_user.id }"
end

# get 'users/:id' => 'users#show'
def show
  @user = User.find(params[:id])
end

# get 'users/:id/edit' => 'users#edit'
def edit
  @user = User.find(params[:id])
end

# put 'users/:id' => 'users#update'
def update
  updated_user = User.find(params[:id])
  updated_user.update(params.require(:user).permit(:username))
  redirect_to "/users/#{ updated_user.id }"
end


# delete 'users/:id' => 'users#destroy'
def destroy
  User.delete(params[:id])
  redirect_to "/users"
end


end
