require 'bundler'
Bundler.require

require './lib/musicbrains'
require './lib/artist'

get '/'  do
  erb :index
end

post '/artist' do
  artist_name = params[:artist_name]
  url = "http://musicbrainz.org/ws/2/artist?query=" + artist_name
  response = HTTParty.get(url)['metadata']['artist_list']
  #@data = response
  @artist = response['name']
 # @hometown = response['begin_area']['name'] + ", " + response['area']['name']
  #@tags = response['tag_list']
  #@name = @artist[0][:name]
  @id = MusicBrainz::Artist.search(params[:artist_name])[0][:mbid]
  release_groups = HTTParty.get("http://musicbrainz.org/ws/2/release-group/?query=artist:" + artist_name)
  @discography = release_groups['metadata']['release_group_list']['release_group']

  erb :show
end



# get '/artist' do
#   @artist = MusicBrainz::Artist.search(params[:artist_name])
#   #@artist = Musicbrains.find(params[:artist_name])
# end



# module Musicbranz
#   def self.find(artist_name)
#     artist_name = artist_name.gsub(' ', '%20')
#     url = "http://musicbrainz.org/ws/2/artist?query=" + artist_name
#     response = HTTParty.get(url)
#     @name = response['metadata']['artist_list']['artist'][0]
#   end
# end

#puts Musicbranz.find('prince')

#puts Musicbrainz.discography(Musicbranz.find('prince'))

