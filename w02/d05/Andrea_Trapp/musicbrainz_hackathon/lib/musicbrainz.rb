module Musicbrainz
  def self.find(artist_name)
  	artist_name = artist_name.gsub(' ', '%20')
 	url = "http://musicbrainz.org/ws/2/artist?query=" + artist_name
	response = HTTParty.get(url)	
	response['metadata']['artist_list']['artist'] # returns a list of artists
	# response = {"name" => "Ramstein", "country" => "DE"} 
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