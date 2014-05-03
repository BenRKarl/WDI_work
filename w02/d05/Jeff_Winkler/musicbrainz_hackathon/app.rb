
require 'bundler/setup'
Bundler.require

require './lib/music_methods'

get '/' do
  erb :index
end

post '/artists' do
  artist_name = params[:artist].gsub(' ','%20')
  redirect "/artists?artist=#{artist_name}"

end

get '/artists' do
  artist_name = params[:artist]
  @artist_data = Musicbrains.find(artist_name)

  artist_id = @artist_data['id']

  @release_group_data = Musicbrains.rg_data(artist_id)




  #@test = MusicBrainz::Artist.find_by_name(artist_name)
  #@name = @test.release_groups
  #binding.pry
  erb :show
    #info = Musicbrains.find(artist_name)
    #info.to_s

end

