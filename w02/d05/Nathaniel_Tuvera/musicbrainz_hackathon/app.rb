require 'bundler'
Bundler.require

get '/' do
  erb :index
end

get '/result' do
  @artist = Musicbrainz.find(params[:artist_name])
  erb :result
end

module Musicbrainz
  def self.find(artist_name)
    # make call to api
    artist_name = artist_name.gsub(' ', '%20')
    url = "http://musicbrainz.org/ws/2/artist?query=" + artist_name
    response = HTTParty.get(url)
    return response['metadata']['artist_list']['artist']
    # data = response['metadata']['artist_list']['artist']
    # artist name in result = artist[0]['name']
    # country result = artist[0]['country']
    # begin_date = artist[0]['life_span']['begin']
    # disambig = artist[1]['disambiguation']
  end
end


artists = Musicbrainz.find('prince')
