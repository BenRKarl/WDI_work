 def log
   data = request.env['omniauth.auth']
   render :json => data.to_json
 end
