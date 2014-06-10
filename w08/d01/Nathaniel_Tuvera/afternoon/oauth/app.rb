require 'bundler'
Bundler.require

configure do
  enable :sessions
end

use OmniAuth::Builder do
  provider :twitter, 'f1tzGLISdbyZeQzZOvJ4K5dCm', '26kbdPMvQliLBArZYNWwJPmf0VK37Zx2B8LlaHjxvBtneDBHVj'
end



class MyApplication < Sinatra::Base
  use Rack::Session::Cookie
  use OmniAuth::Strategies::Developer
end

helpers do
  def current_user
    !session[:uid].nil?
  end
end


Rails.application.config.middleware.use OmniAuth::Builder do
  provider :developer unless Rails.env.production?
  provider :instragram, ENV['2edb80e867b64bc5ad46a48bad733fb6'], ENV['TWITTER_SECRET']
end

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :developer unless Rails.env.production?
  provider :twitter, ENV['f1tzGLISdbyZeQzZOvJ4K5dCm'], ENV['26kbdPMvQliLBArZYNWwJPmf0VK37Zx2B8LlaHjxvBtneDBHVj']
end


Instagram.configure do |config|
  config.client_id = "2edb80e867b64bc5ad46a48bad733fb6"
  config.client_secret = "74c674b10cc2462ead3b14b7d195aa1c"
end






# ----- routes -----

# get '/' do
#   erb :index
# end

# get '/login' do
#   redirect to('/auth/twitter')
# end

# get 'auth/:twitter/callback' do
#   session[:uid] = env['omniauth.auth']['uid']
#   redirect to('/')
# end

# get '/auth/failure' do
#   end

helpers do
  def admin?
    session[:admin]
  end
end

get '/public/' do
  "This is the public page - no login in required"
end

get '/private/' do
  halt(401,'NotAuthorizd') unless admin?
  "This is the private page -- please log in"
end

get '/login' do
  redirect to("/auth/twitter")
  session[:admin] = true
  "You are now logged in"
end

get '/auth/twitter/callback' do
  session[:admin] = true
    session[:admin] = true
    session[:username] = env['omniauth.auth']['info']['name']
    "<h1>Hi #{session[:username]}!</h1>"
end

get 'auth/failure' do
  params[:message]
end

get '/logout' do
  session[:admin] = nil
  "You are logged out"
end
