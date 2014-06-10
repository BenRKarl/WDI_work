class SessionsController < ApplicationController::Base

  def log
    data = request.env['omniauth.auth']
    render :json => data.to_json
  end

end
