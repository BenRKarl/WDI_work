require 'bundler'
require 'json'
require 'open-uri'
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
  album_list.each do |album|
    mbid = album.id
    album_data = []
    album_data << album.title
    begin 
      open("http://coverartarchive.org/release-group/#{mbid}/") do |f|
        data = f.read
        album_data << "<img src=#{JSON.parse(data)['images'][0]['thumbnails']['small']}>"
      end
    rescue OpenURI::HTTPError
      album_data << ''
    end
    @albums << album_data

  end
  erb :show
end