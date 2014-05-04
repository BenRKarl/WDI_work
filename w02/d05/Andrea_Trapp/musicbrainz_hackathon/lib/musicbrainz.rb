module Musicbrainz
  def self.find_artist(artist_name)
  	artist_name = artist_name.gsub(' ', '%20')
 	url = "http://musicbrainz.org/ws/2/artist?query=" + artist_name
 	# works also: url = "http://musicbrainz.org/search?query=#{artist_name}&type=artist"
 	# works also: url = "http://musicbrainz.org/artist/c954d136-c7fd-4fd9-8bb0-fb0491fc6a02"
 	# query releases from Nena http://musicbrainz.org/ws/2/release/?query=99+red+ballons
	response = HTTParty.get(url)	
	artists = response['metadata']['artist_list']['artist'] # returns a list of artists
	artist = artists[0] # returns the first artist in the artists list, supposedly the perfect match with score=100
	artist_info = {}

	artist_info[:name] = artist["name"]
	artist_info[:score] = artist["score"]
	artist_info[:country] = artist['country']
	artist_info[:type] = artist["type"]
	artist_info[:gender] = artist["gender"]
	artist_info[:start] = artist["life_span"]["begin"]
	artist_info[:area] = artist["area"]["name"]
	artist_info[:disambiguation] = artist["disambiguation"]
	artist_info[:id] = artist["id"]

	artist_info	
	#artist_id = artist['id']
    # [0] "name",
    # [1] "sort_name",
    # [2] "country",
    # [3] "area",
    # [4] "disambiguation",
    # [5] "life_span",
    # [6] "tag_list",
    # [7] "id",
    # [8] "type",
    # [9] "score"

	# response = MusicBrainz::Artist.find_by_name(artist_name)
		# Exception at /artists
		# Configuration missing
		# file: configuration.rb location: config line: 47

	# response = {"name" => "Rammstein", "country" => "DE"} # not in database
  end 

 def self.find_release_group(artist_id)  	
 	url = "http://musicbrainz.org/ws/2/release-group/?query=arid:" + artist_id
 	# works also: url = "http://musicbrainz.org/search?query=#{artist_name}&type=artist"
 	# works also: url = "http://musicbrainz.org/artist/c954d136-c7fd-4fd9-8bb0-fb0491fc6a02"
 	# query releases from Nena http://musicbrainz.org/ws/2/release/?query=99+red+ballons
	response = HTTParty.get(url)	
	release_groups = response['metadata']['release_group_list']['release_group'] # returns a list of release-groups
	# first_release_groups_title = response['metadata']['release_group_list']['release_group'][0]['title'] 


	# response = MusicBrainz::Artist.find_by_name(artist_name)
		# Exception at /artists
		# Configuration missing
		# file: configuration.rb location: config line: 47

	# response = {"name" => "Ramstein", "country" => "DE"} # not in database because misspelled
  end 

end
# > response = HTTParty.get("http://musicbrainz.org/ws/2/release-group/?query=arid:c954d136-c7fd-4fd9-8bb0-fb0491fc6a02")
# [59] pry(main)> response['metadata']['release_group_list']['release_group'][0]['title']
# "Die Band."


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