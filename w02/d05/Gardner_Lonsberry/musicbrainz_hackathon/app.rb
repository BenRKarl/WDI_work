require 'bundler'
Bundler.require

module Musicbrainz
  def self.find(artist_name)
  	artist_name = artist_name.gsub(' ', '%20')
  	suggestions = MusicBrainz::Artist.search("artist_name")    
 response['metadata']['artist_list']['artist']
end

get '/' do 
  "hi"
  erb :index
end

post '/artist' do
  artist_name = params[:artist_name].gsub(' ', '%20')
end

get '/artist' do
  "hi"
  erb :dump
end

