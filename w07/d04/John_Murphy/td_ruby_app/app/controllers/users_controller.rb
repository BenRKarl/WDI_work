class UsersController < ApplicationController

  def index
    @users = User.all
    respond_to do |format|
      format.json { render :json => @users.to_json}
      format.html
    end
  end

  def new
    @user = User.new
  end

  def create
    user = User.create(user_params)
    respond_to do |format|
      format.html {redirect_to user_path(user)}
      format.json {render json: user.to_json}
    end
  end

  def show
    @user = User.find(params[:id])
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    user = User.find(params[:id])
    user.update(user_params)
    redirect_to user_path(user)
  end

  def destroy
    user = User.find(params[:id])
    User.delete(user)
    redirect_to users_path
  end

  private

  def user_params
    params.require(:user).permit(:username, :email)
  end

end
