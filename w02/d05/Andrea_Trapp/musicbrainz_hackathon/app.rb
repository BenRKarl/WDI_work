require 'bundler/setup'
Bundler.require

require './lib/musicbrainz'


get '/' do 
  erb :root
end

get '/artists' do 
	#@artists = Musicbrainz.find_artist(params[:artist_name])
	@artist = Musicbrainz.find_artist(params[:artist_name])	
	@artist_wiki = @artist[:name].gsub(' ','_')
	unless @artist == nil
		# @release_groups = Musicbrainz.find_release_group(@artist['id'])
		@release_groups = Musicbrainz.find_release_group(@artist[:id])
		release_group_id = "6fa29542-6f8b-49ff-afc9-7d5b4ac4a0db"
		@coverart_url = "http://coverartarchive.org/release-group/" + release_group_id + "/front.jpg"
		
		# @release_groups.each do |release_group|
		# 	@title = release_group['title']			
		# end

		erb :show
	else
		erb :error
	end
	#@artist == nil ? (erb :error) : (erb :show)

end



# ---------------------
# Navigation through Musicbrainz data structure using 'pry'
# first require 'musicbrainz' and 'httparty' to be able to execute
# > response = HTTParty.get("http://musicbrainz.org/ws/2/artist?query=nena")
# Info source for creating the above url under following webpage
# > http://musicbrainz.org/doc/Development/XML_Web_Service/Version_2/Search
# > https://musicbrainz.org/doc/Development/JSON_Web_Service
# then take response and subsequently execute .keys on each step - if possible - 
# to move forward until the information is found. See below:
# ---------------------
# pry
# require 'musicbrainz'
# require 'httparty'
# response = HTTParty.get("http://musicbrainz.org/ws/2/artist?query=nena")
# response.keys

	# [0] "metadata"

# response['metadata'].keys

	# [0] "artist_list",
	# [1] "created"

# response['metadata']['artist_list'].keys

	# [0] "artist",
	# [1] "count",
	# [2] "offset"

# response['metadata']['artist_list']['artist'].keys

	# [8] pry(Musicbrainz)> response['metadata']['artist_list']['artist'].keys
	# NoMethodError: undefined method `keys' for #<Array:0x007ff02aa673c8>
	# from (pry):19:in `find'

# response['metadata']['artist_list']['artist'][0]
# response['metadata']['artist_list']['artist'][0].keys

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

# response['metadata']['artist_list']['artist'][0]["disambiguation"]

	# "Japanese trance artist"





# Find artist for a given release
# -------------------------------
# http://musicbrainz.org/ws/2/release/?query=99+red+ballons

# # > response = HTTParty.get("http://musicbrainz.org/ws/2/release/?query=99+red+ballons")
# [8] pry(main)> response['metadata']['release_list']['release'][0]['artist_credit']['name_credit']
# {
#     "artist" => {
#                   "name" => "Nena",
#              "sort_name" => "Nena",
#         "disambiguation" => "the band, until 1987",
#                     "id" => "c954d136-c7fd-4fd9-8bb0-fb0491fc6a02"
#     }
# }


# Find artist for a given release-group (album)
# ---------------------------------------------
# http://musicbrainz.org/ws/2/release-group/?query=99+luftballons

# # > response = HTTParty.get("http://musicbrainz.org/ws/2/release-group/?query=99+luftballons")
# [34] pry(main)> response['metadata']['release_group_list']['release_group'][0]['artist_credit']['name_credit']
# {
#     "artist" => {
#                   "name" => "Nena",
#              "sort_name" => "Nena",
#         "disambiguation" => "the band, until 1987",
#                     "id" => "c954d136-c7fd-4fd9-8bb0-fb0491fc6a02"
#     }
# }

# Find release-groups (albums) for a given artist 
# ---------------------------------------------
# > search by artist id => http://musicbrainz.org/ws/2/release-group/?query=arid:c954d136-c7fd-4fd9-8bb0-fb0491fc6a02
# > search by artist name => http://musicbrainz.org/ws/2/release-group/?query=artist:nena

# > response = HTTParty.get("http://musicbrainz.org/ws/2/release-group/?query=arid:c954d136-c7fd-4fd9-8bb0-fb0491fc6a02")
# [59] pry(main)> response['metadata']['release_group_list']['release_group'][0]['title']
# "Die Band."


# -----------------------
# ---- Andrew's Code ----
# -----------------------
# require 'bundler'
# Bundler.require

# module Musicbranz
#   def self.find(artist_name)

#     artist_name = artist_name.gsub(' ', '%20')
#     url = "http://musicbrainz.org/ws/2/artist?query=" + artist_name
#     response = HTTParty.get(url)

#     response['metadata']['artist_list']['artist']
#   end
# end

# artists = Musicbranz.find('bjork')
# ------------------------
