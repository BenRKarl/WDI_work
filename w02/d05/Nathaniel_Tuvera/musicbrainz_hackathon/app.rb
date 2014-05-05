require 'bundler'
Bundler.require

get '/' do
  erb :index
end

get '/result' do
  @artist = Musicbrainz.find(params[:artist_name])
  @artist_name = params[:artist_name]
  @result_name = @artist[0]['name']
  @result_country = @artist[0]['country']
  @result_begin_date = @artist[0]['life_span']['being']
  @result_disambiguation = @artist[0]['tag_list']['tag'][0]['name']
  # @result_tags = @artist[0]['tag_list']['tag'].each {|name, value| name}
  # binding.pry
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
