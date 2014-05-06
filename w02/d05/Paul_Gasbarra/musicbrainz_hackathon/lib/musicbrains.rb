module Musicbrains
  include HTTParty
  def self.find(artist)
  artist_name = artist.gsub(' ', '%20')
  url = "http://musicbrainz.org/ws/2/artist?query=" + artist_name
  response = self.get(url)['metadata']['artist_list']['artist']
  name = response['name']
  home_city = response['begin_area']['name']
  home_country = response['area']['name']
  origin = home_city + ", " + home_country

  release_groups = HTTParty.get("http://musicbrainz.org/ws/2/release-group/?query=artist:" + artist_name)
  discography = release_groups['metadata']['release_group_list']['release_group']
  artist = Artist.new(name, origin, discography)
  end
end

