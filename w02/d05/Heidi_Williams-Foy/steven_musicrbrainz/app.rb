require 'bundler/setup'
Bundler.require

require './lib/artist'
require './lib/musicbrainz'

get '/' do
  erb :index
end

get '/artist' do 
  @artist = Musicbrainz.find(params[:artist_name])
  erb :show
end

