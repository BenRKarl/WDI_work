
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
  #need something if artist_id is null
  @release_group_data = Musicbrains.rg_data(artist_id)
  erb :show
end

get '/release/:rgid' do
  rg_id = params[:rgid]
  @release = Musicbrains.choose_one_release(rg_id)
  #need something if @release is nil
  release_id = @release['id']
  @track_list = Musicbrains.track_list(release_id)
  @artwork = Musicbrains.artwork(@release)
  erb :release
end

