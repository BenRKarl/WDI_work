# http://www.sitepoint.com/twitter-authentication-in-sinatra/

require 'sinatra'
 
configure do
  enable :sessions
end
 
helpers do
  def admin?
    session[:admin]
  end
end
 
get '/public' do
  "This is the public page - everybody is welcome!"
end
 
get '/private' do
  halt(401,'Not Authorized') unless admin?
  "This is the private page - members only"
end
 
get '/login' do
  session[:admin] = true
  "You are now logged in"
end
 
get '/logout' do
  session[:admin] = nil
  "You are now logged out"
end


# Now restart the server and try going to ‘http://localhost:4567/login’,
#  then go to ‘http://localhost:4567/private’, and you should be able to 
#  see the page. Go to ‘http://localhost:4567/logout’, then try 
#  ‘http://localhost:4567/private’ again, and you should get the ‘unauthorized’ message.

# Great – we have a working log in and log out system. 
# The next step is to use Twitter to authenticate the user instead of just allowing anybody 
# to log in using the login url.