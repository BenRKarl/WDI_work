require 'bundler'
Bundler.require

get '/' do
  "hi, i am at the root"
end

get '/movie' do
  "showtime"
end