require 'bundler/setup'
Bundler.require

require './lib/musicbrainz'


get '/' do 
  erb :root
end

get '/artists' do 	
	@artist = Musicbrainz.find_artist(params[:artist_name])		
	
	unless @artist == nil
		@release_groups = Musicbrainz.find_release_group(@artist["id"])
		erb :show
	else
		erb :error
	end
end

