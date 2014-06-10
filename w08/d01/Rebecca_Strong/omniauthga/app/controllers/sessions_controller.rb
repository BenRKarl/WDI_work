class SessionsController < ApplicationController
  def index

  end
  def log
     data = request.env['omniauth.auth']
     render :json => data.to_json
   end
end
