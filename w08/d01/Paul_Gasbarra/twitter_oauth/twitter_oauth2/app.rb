require 'bundler'
Bundler.require

use OmniAuth::Builder do
  provider :twitter, '4ft1XKfHHkLOZWx7NG8mAowxp', 'wDdHPrn2OyjwdgVuZNllMiy86VzodNsnV3nk6F0kvjmUsobwuF'
end

configure do
  enable :sessions
end

helpers do
  def admin?
    session[:admin]
  end
end



get '/' do
  "This is the public page - everybody is welcome!"
end

get '/private' do
  halt(401, 'Not Authorized') unless admin?
  "This is the private page - members only"
end

get '/login' do
   redirect to("/auth/twitter")
end

get '/logout' do
  session[:admin] = nil
  "You are now logged out"
end
