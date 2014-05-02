require 'bundler/setup'
Bundler.require

module Musicbrainz
  def self.find(artists_name)
    #call api
    artist_name = artists_name.gsub(' ', '%20')

    url = "http://musicbrainz.org/ws/2/artist?query=" + artist_name

    response = HTTParty.get(url)

    @recipe = response['metadata']['artist_list']['artist']


  end

end

artist = Musicbrainz.find('css')
# return a hash of found artists 
get '/' do

erb :root
end

post  '/search' do
	artist_name = params[:artist_name].gsub(' ','%20')

	redirect "/search?term=#{artist_name}"


end

get '/search' do

  search_term = params[:term]
  @artists = Musicbrainz.find('prince')	
  erb :show
end




