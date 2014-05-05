require 'bundler'
Bundler.require

module Musicbrainz

	def self.find(artist_name)
	
	url = "http://musicbrainz.org/ws/2/artist?query=" + artist_name
	response = HTTParty.get(url)
	return response['metadata']['artist_list']['artist']
end

artists = Musicbrainz.find('lady_gaga')

end

