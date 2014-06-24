class SessionsController < ApplicationController

  def new # login-form
  end
  def create # login
    @wizard = login(params[:email], params[:password])
    if @wizard
      redirect_to root_path
    else
      render :new   # rebuild form with the same inputs
    end
  end
  def destroy #log out
    logout
    redirect_to root_path
  end

end
