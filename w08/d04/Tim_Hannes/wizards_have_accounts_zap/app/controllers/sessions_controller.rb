class SessionsController < ApplicationController

  def new # login form

  end

  def create #login
    wizard = login(params[:email], params[:password]) #goes to wizards, finds email associated, encrypts it and compares it to already compared one, if used in is DB, it logs it in and puts ID in the session.
    if wizard
      redirect_to root_path
    else
      render :new
    end
  end

  def destroy #logout
    logout
    redirect_to root_path
  end

end
