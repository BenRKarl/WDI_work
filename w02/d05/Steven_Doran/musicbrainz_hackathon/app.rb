require 'bundler'
Bundler.require

MusicBrainz.configure do |c|
  c.app_name = "My Music App"
  c.app_version = "1.0"
  c.contact = "support@mymusicapp.com"
end

get '/' do
  erb :index
end

get '/artist' do 
  artist = params[:artist_name]
  artist_info = MusicBrainz::Artist.find_by_name(artist)
  @name = artist_info.name
  @country = artist_info.country
  @albums = []
  album_list = artist_info.release_groups  
  album_list.each { |album| @albums << album.title }
  erb :show
end
