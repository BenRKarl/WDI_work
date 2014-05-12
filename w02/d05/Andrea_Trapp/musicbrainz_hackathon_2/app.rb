require 'bundler/setup'
Bundler.require

require './lib/musicbrainz'


get '/' do 
  erb :root
end

get '/artists' do 	

	artist = {}
	artist["name"] = "Ana Tijoux"
	artist["country"] = "CL"
	artist["type"] = "Person" 
	artist["life_span"] = "1977"
	artist["disambiguation"] = ""
	@artist = artist

	release_groups = {}
	release_groups["title"] = "1977"
	release_groups["link"] = ""
	# release_groups["title"] = "Ana"
	# release_groups["link"] = "http://coverartarchive.org/release-group/123/front.jpg"

	@release_groups = release_groups


	erb :show
	# @artist = Musicbrainz.find_artist(params[:artist_name])		
	
	# unless @artist == nil
	# 	@release_groups = Musicbrainz.find_release_group(@artist["id"])
	# 	erb :show
	# else
	# 	erb :error
	# end
end

