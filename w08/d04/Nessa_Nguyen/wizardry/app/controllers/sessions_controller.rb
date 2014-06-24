class SessionsController < ApplicationController
  def new
    #login form
  end

  def create
    @wizard = login(params[:email].downcase, params[:password])
    if @wizard
      redirect_to root_path
    else
      render :new
    end  
  end

  def destroy
    logout
    redirect_to root_path
  end
end
