
# http://www.sitepoint.com/twitter-authentication-in-sinatra/

require 'sinatra'
require 'omniauth-twitter'
 
use OmniAuth::Builder do
  # provider :twitter, 'put your consumer key here', 'put your consumer secret here'
  provider :twitter, 'EwTehaQF1NoJEBSYTjkVH0eai', 'APsHKc2zTwqFD7Z7EK9MXhPMMh0RKt9qthGeYvZI2pn9Mq0nUp'

end

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
 
# get '/login' do
#   session[:admin] = true
#   "You are now logged in"
# end

get '/login' do
  redirect to("/auth/twitter")
end
 
get '/logout' do
  session[:admin] = nil
  "You are now logged out"
end

get '/auth/twitter/callback' do
  env['omniauth.auth'] ? session[:admin] = true : halt(401,'Not Authorized')
  "You are now logged in"
end

get '/auth/failure' do
  params[:message]
end



# wdiAuthApp
# Application settings
# Keep the "API secret" a secret. This key should never be human-readable in your application.
# API key EwTehaQF1NoJEBSYTjkVH0eai
# API secret  APsHKc2zTwqFD7Z7EK9MXhPMMh0RKt9qthGeYvZI2pn9Mq0nUp
# Access level   Read-only (modify app permissions)
# Owner delia421
# Owner ID  382563042