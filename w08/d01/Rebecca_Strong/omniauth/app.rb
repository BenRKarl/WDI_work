# http://www.sitepoint.com/twitter-authentication-in-sinatra/

require 'sinatra'
require 'omniauth-twitter'

use OmniAuth::Builder do
  # provider :twitter, 'put your consumer key here', 'put your consumer secret here'
  provider :twitter, 'vdvuR9KTcLZYFeB5d0bqi5fBS', 'b4m1Wl7ccccmpRMkOEDg1yaWeDI91hXzJ4ZsgoBOiIVnlMEMCv'

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
