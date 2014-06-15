require 'bundler'
Bundler.require
require 'sinatra'
require 'omniauth'
require 'omniauth-instagram'
require 'omniauth-twitter'

  use Rack::Session::Cookie
  # use OmniAuth::Strategies::Developer
  use OmniAuth::Builder do
    provider :twitter, "BIyzLabFtrgqWINYFAPRJIxMf", "pmbAvCqGtigxCQrLR8orI0bq8Z4MbBtJNmjWfp7MaKBfDVdaJh"
  end

  get '/' do
    erb :index
  end

  get '/twitter' do

  end

  get '/auth/twitter' do
    redirect to("/twitter")
  end

  get '/auth/instagram' do

  end

  get '/auth/twitter/callback' do
    session[:admin] = true
    "<h1>Hi #{env['omniauth.auth']['info']['name']}!</h1><img src='#{env['omniauth.auth']['info']['image']}'>"
  end

  get '/auth/instagram/callback' do

  end

  get '/auth/twitter/failure' do
    params[:message]
  end
