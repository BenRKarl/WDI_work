
module Musicbrains
  def self.find(artist_name)
    artist_name = artist_name.gsub(' ','%20')
    url = "http://musicbrainz.org/ws/2/artist?query=" + artist_name
    #url = "http://musicbrainz.org/ws/2/artist?query=prince"
    response = HTTParty.get(url)
    response["metadata"]["artist_list"]["artist"]
  end
end
