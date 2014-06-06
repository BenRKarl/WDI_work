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
  artist = Artist.new(name, )
  end
end

