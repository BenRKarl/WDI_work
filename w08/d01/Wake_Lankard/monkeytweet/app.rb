require 'bundler/setup'
Bundler.require

require 'sinatra'
require 'omniauth'

  YOUR_CONSUMER_KEY ="Z7d
  YOUR_CONSUMER_SECRET = "250123-
  YOUR_ACCESS_SECRET = "m



  use Rack::Session::Cookie
  use OmniAuth::Strategies::Developer

  use OmniAuth::Builder do
    provider :twitter, YOUR_CONSUMER_KEY, YOUR_CONSUMER_SECRET
  end

  get '/login' do
    redirect to('/auth/twitter')
  end
 
  get '/auth/failure' do
    params[:message]
  end

  get '/' do
   "hellow world"  
  end
get '/auth/twitter/callback' do
  "Hello World"

tweets = HTTParty.get('https://api.twitter.com/1.1/search/tweets.json?q=%23freebandnames&since_id=24012619984051000&max_id=250126199840518145&result_type=mixed&count=4')
binding.pry
end





