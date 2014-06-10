require 'bundler'
Bundler.require
require 'sinatra'
require 'omniauth'
require 'omniauth-twitter'
require 'omniauth-instagram'

configure do
  enable :sessions

  use OmniAuth::Builder do
    provider :twitter, ENV['TWITTER_KEY'], ENV['TWITTER_SECRET']
    provider :instagram, ENV['INSTAGRAM_ID'], ENV['INSTAGRAM_SECRET']
  end
end

  get '/' do
    erb :index
  end

  get '/auth/twitter' do
    query = "x_auth_access_type=write"
  end


  get '/auth/twitter/callback' do
    session[:uid] = env['omniauth.auth']['uid']
    @data = request.env['omniauth.auth'].to_json
    erb :loggedin
  end  

  post '/auth/twitter/status_update' do
    status = params[:status].gsub!(' ', '%20')
    url = "https://api.twitter.com/1/statuses/update.json?oauth_token=44DAWpSQsfPyCKqOStiNutUBHQ61Lil9AWDrF0Yyo&oauth_verifier=goOUjeBhHv2oEkMAj8j5tl9arwCfqz6iMFSUSaHpo&" + "#{status}" + "&include_entities=true"

  end
    
  get '/auth/failure' do
    'log in failed'
  end

  get '/auth/instagram' do
    query = "?client_id=#{INSTAGRAM_ID}&redirect_uri=http://fashionize.herokuapp.com&response_type=code"
    url = "https://api.instagram.com/oauth/authorize/" + query
    
  end

  get '/auth/instagram/callback' do
    'Signed in'
  end
