require "bundler"
Bundler.require

get '/' do
	erb :index
end

post '/artist_info' do
	from_form = params[:input].gsub(" ", "%20")
	redirect "/artist_info?artist=" + from_form
end


get '/artist_info' do
	artist_name = params[:artist]
	# @id = MusicBrainz::Artist.search(artist_name)[0]["mbid".to_sym]
	# @album = MusicBrainz::Artist.find(@id)
	url = "http://musicbrainz.org/ws/2/artist?query=" + artist_name
	response = HTTParty.get(url)
	@data = response["metadata"]["artist_list"]["artist"][0]["id"]
	erb :show
end




# module Musicbrainz
# 	def self.find(artist_name)
# 		artist_name = artist_name.gsub(" ", "%20")
# 		url = "http://musicbrainz.org/ws/2/artist?query=" + artist_name
# 		response = HTTParty.get(url)
# 		data = response["metadata"]["artist_list"]["artist"]
# 	end
# end

# artists = Musicbrainz.find("prince")