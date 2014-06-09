class UsersController < ApplicationController
  

  
  def index
    @users = User.all
    respond_to do |format|
      format.json { render :json => @users.to_json }
      format.html
    end
  end

  
  def show
  end

  
  def new
    @user = User.new
  end

  
  def edit
  end

  
  def create
    @user = User.new(user_params)

  end

  
  def update
    
  end

  
  def destroy
    @user.destroy
    
  end

  private
   
    def user_params
      params.require(:user).permit(:name)
    end
end
