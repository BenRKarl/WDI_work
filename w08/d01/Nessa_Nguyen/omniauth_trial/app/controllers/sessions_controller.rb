class SessionsController < ApplicationController
  def create
    if user = User.authenticate(params[:username], params[:password])
      session[:user_id] = user.user_id
      redirect_to root_path
    else
      flash[:notice] = "Log in failed. Try again"
      redirect_to login_path
    end    
  end

  def authorize
  end

  def log
    data = request.env['omniauth.auth']
    render :json => data.to_json
 end
end
