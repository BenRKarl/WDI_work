module OMDB
	include HTTParty

	def self.find(movie)
		movie_name = movie.gsub(' ', '%20')
		movie_json = self.get("http://omdbapi.com/?t="+movie_name)
								# self = HTTParty
		movie_hash = JSON.parse(movie_json)
		movie = Movie.new(movie_hash)  #create Movie class
	end
end

	
