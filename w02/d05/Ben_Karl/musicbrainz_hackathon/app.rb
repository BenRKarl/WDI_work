require "bundler/setup"
Bundler.require

get "/" do
  redirect "/index"
end

get "/index" do
  erb :index
end

post "/show" do
  artist = params[:artist].gsub(' ', '%20').downcase
  redirect "/show?artist=#{artist}"
end

get "/show" do
  artist = params[:artist]
  @artist_info = MusicBrainz::Artist.find_by_name(artist)
  @name = @artist_info.name
  @dob = @artist_info.date_begin
  @country = @artist_info.country
  @death = @artist_info.date_end #NIL IF ALIVE
  @type = @artist_info.type
  @wiki_page = @artist_info.urls[:wikipedia]
  @discography = @artist_info.urls[:discogs]
  @facebook_page = @artist_info.urls[:social_network]
  erb :show
end
