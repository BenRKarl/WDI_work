require 'bundler'
Bundler.require

#require './lib/class_music'
#require '.lib/module_musicbrainz'


get '/' do
  erb :root
end

get '/artist' do
  @artist = Musicbranz.find(params[:artist])
  erb :show
end
