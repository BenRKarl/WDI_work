
require 'bundler/setup'
Bundler.require

require './lib/music_methods'

get '/' do
  erb :index
end

post '/artists' do
  artist_name = params[:artist].gsub(' ','%20')
  if artist_name == ""
    redirect "/"
  else
    redirect "/artists?artist=#{artist_name}"
  end
end

get '/artists' do
  artist_name = params[:artist]
  @artist_data = Musicbrains.find(artist_name)
  if @artist_data == nil
    erb :index
  else
    artist_id = @artist_data['id']
    @release_group_data = Musicbrains.rg_data(artist_id)
    if @release_group_data == nil
      erb :index
    else
      erb :show
    end
  end
end

get '/release/:rgid' do
  rg_id = params[:rgid]
  @release = Musicbrains.choose_one_release(rg_id)
  if @release == nil
    erb :show
  else
    release_id = @release['id']
    @track_list = Musicbrains.track_list(release_id)
    @artwork = Musicbrains.artwork(@release)
  end
  erb :release
end

