
require 'bundler/setup'
Bundler.require

require './lib/music_methods'

get '/' do
  erb :index
end

post '/artists' do
  artist_name = params[:artist].gsub(' ','%20')
  #url = "http://musicbrainz.org/ws/2/artist?query=prince"
  #response = HTTParty.get(url)
  redirect "/artists?artist=#{artist_name}"

end

get '/artists' do

  #"#{params}"
  artists = Musicbrains.find('prince')

end

