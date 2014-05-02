
require 'bundler/setup'
Bundler.require

require './lib/music_methods'

get '/' do
  erb :index
end

post '/artists' do
  artist_name = params[:artist].gsub(' ','%20')
  redirect "/art?artist=#{artist_name}"

end

get '/art' do
    artist_name = params[:artist]

    info = Musicbrains.find(artist_name)
    info.to_s

end

