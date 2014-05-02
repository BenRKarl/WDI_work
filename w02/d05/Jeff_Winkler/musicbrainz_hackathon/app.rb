
require 'bundler/setup'
Bundler.require

require './lib/music_methods'

get '/' do
  #@test = MusicBrainz::Artist.find_by_name("Green Day")
  #@name = @test.release_groups

  #@name = "Aziz"
  erb :index
end

post '/artists' do
  artist_name = params[:artist].gsub(' ','%20')
  redirect "/art?artist=#{artist_name}"

end

get '/art' do
    artist_name = params[:artist]

  @test = MusicBrainz::Artist.find_by_name(artist_name)
  @name = @test.release_groups

  erb :show
    #info = Musicbrains.find(artist_name)
    #info.to_s

end

