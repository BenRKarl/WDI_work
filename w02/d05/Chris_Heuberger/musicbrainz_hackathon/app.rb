require 'bundler'
Bundler.require

require './lib/musicbrainz'
require './lib/artist'

get '/'  do
  erb :index
end

get '/artist' do
  erb :show
end

post '/artist' do
  erb :show
end
