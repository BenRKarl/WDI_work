require 'bundler/setup'
Bundler.require

require './lib/artist'
require './lib/musicbrainz'

MusicBrainz.configure do |c|
  # Application identity (required)
  c.app_name = "My Music App"
  c.app_version = "1.0"
  c.contact = "support@mymusicapp.com"
end

get '/' do
  erb :index
end

get '/artist' do 
  @artist = Musicbrainz.find(params[:artist_name])
  erb :show
end
