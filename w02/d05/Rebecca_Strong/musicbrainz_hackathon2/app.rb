require 'bundler/setup'
Bundler.require

# require './lib/musicbrainz'
module Musicbrainz
  def self.find_artist(artist_name)
    artist_name = artist_name.gsub(' ', '%20')
  url = "http://musicbrainz.org/ws/2/artist?query=" + artist_name
  # works also: url = "http://musicbrainz.org/search?query=#{artist_name}&type=artist"
  # works also: url = "http://musicbrainz.org/artist/c954d136-c7fd-4fd9-8bb0-fb0491fc6a02"
  # query releases from Nena http://musicbrainz.org/ws/2/release/?query=99+red+ballons
  response = HTTParty.get(url)
  artists = response['metadata']['artist_list']['artist'] # returns a list of artists
  artists[0] # returns the first artist in the artists list, supposedly the perfect match with score==100
  end


 def self.find_release_group(artist_id)
  url = "http://musicbrainz.org/ws/2/release-group/?query=arid:" + artist_id
  # works also: url = "http://musicbrainz.org/search?query=#{artist_name}&type=artist"
  # works also: url = "http://musicbrainz.org/artist/c954d136-c7fd-4fd9-8bb0-fb0491fc6a02"
  # query releases from Nena http://musicbrainz.org/ws/2/release/?query=99+red+ballons
  response = HTTParty.get(url)
  release_groups = response['metadata']['release_group_list']['release_group'] # returns a list of all release-groups
  # first_release_groups_title = response['metadata']['release_group_list']['release_group'][0]['title']
  end

end


get '/' do
  erb :root
end

get '/artists' do
  @artist = Musicbrainz.find_artist(params[:artist_name])

  unless @artist == nil
    @release_groups = Musicbrainz.find_release_group(@artist["id"])
    erb :show
  else
    erb :error
  end
end

