require 'bundler'
Bundler.require

get '/' do
  erb :index
end

get '/result' do
  @artist = Musicbranz.find(params[:artist_name])
  erb :result
end

module Musicbranz
  def self.find(artist_name)
    # make call to api
    artist_name = artist_name.gsub(' ', '%20')
    url = "http://musicbrainz.org/ws/2/artist?query=" + artist_name
    response = HTTParty.get(url)
    response['metadata']['artist_list']['artist']
    # data = response['metadata']['artist_list']['artist']
  end
end


artists = Musicbranz.find('Prince')
