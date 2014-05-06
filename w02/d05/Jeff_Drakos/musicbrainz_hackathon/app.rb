require 'bundler'
Bundler.require


get '/' do
  erb :index
end

post '/artist' do
  artist_name = params[:artist_name].gsub(' ', '%20')
  redirect "/artist?artist_name=#{artist_name}"
end

get '/artist' do
  artist_name = params[:artist_name]
  @artist_info = MusicBrainz::Artist.find_by_name(artist_name)
  @name = @http://artist_info.name
  @urls = @artist_info.urls[:official_homepage]
  @wiki = @artist_info.urls[:wikipedia]
  @discography = @artist_info.urls[:discography]
  @discogs = @artist_info.urls[:discogs]
  erb :artist
end

