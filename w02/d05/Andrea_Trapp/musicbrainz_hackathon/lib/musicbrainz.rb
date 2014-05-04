module Musicbrainz
  def self.find(artist_name)
  	artist_name = artist_name.gsub(' ', '%20')
 	url = "http://musicbrainz.org/ws/2/artist?query=" + artist_name
 	# works also: url = "http://musicbrainz.org/search?query=#{artist_name}&type=artist"
 	# works also: url = "http://musicbrainz.org/artist/c954d136-c7fd-4fd9-8bb0-fb0491fc6a02"
 	# query releases from Nena http://musicbrainz.org/ws/2/release/?query=99+red+ballons
	response = HTTParty.get(url)	
	response['metadata']['artist_list']['artist'] # returns a list of artists
	
	# response = MusicBrainz::Artist.find_by_name(artist_name)
		# Exception at /artists
		# Configuration missing
		# file: configuration.rb location: config line: 47

	# response = {"name" => "Ramstein", "country" => "DE"} # not in database
  end 
end


# ---------------------------------
# from w02 d05 project "omdb_spike"
# ---------------------------------
# module OMDB
#   include HTTParty
#   def self.find(movie)
#     movie_name = movie.gsub(' ', '%20')
#     movie_json = self.get("http://www.omdbapi.com/?t="+movie_name)
#     movie_hash = JSON.parse(movie_json)
#     movie = Movie.new(movie_hash)
#   end
# end