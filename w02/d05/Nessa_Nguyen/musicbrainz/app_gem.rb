require 'bundler'
Bundler.require


get '/' do 

  erb :root
end


post '/search' do
  artist = params[:artist_name].gsub(' ','%20')
  redirect "/search?term=#{artist}"
end


get '/search' do
  artist   = MusicBrainz::Artist.find_by_name(params[:term])
  @name    = artist.name
  @country = artist.country 
  @type    = artist.type.downcase
  @start   = artist.date_begin  #artist born/group founed in
  @youtube = artist.urls[:youtube]
  @homepage= artist.urls[:official_homepage]

  #@id      = artist.id
  #@artist2 = MusicBrainz::Artist.find(@id)

  erb :show
end

