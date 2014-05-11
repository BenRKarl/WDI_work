require 'bundler/setup'
Bundler.require

module Musicbrainz

def self.find(artist_name)

  artist_name = artist_name.gsub(' ', '%20')

    url = "http://musicbrainz.org/ws/2/artist?query=" + artist_name
    response = HTTParty.get(url)

    return response['metadata']['artist_list']['artist']


end



get '/artists' do
  @artists = Musicbrainz.find(params[:artist_name])
  @artist = @artists[0]
  @artist== nil ? (erb :error) : (erb :show)

end

artists = Musicbrainz.find('avi_avital')

# execute .keys on each step to move forward until the info is found
#response.keys
#response['metadata'].keys
#response['metadata']['artist_list'].keys
#response['metadata']['artist_list']['artist'].keys

                # [8] pry(Musicbrainz)> response['metadata']['artist_list']['artist'].keys
                # NoMethodError: undefined method `keys' for #<Array:0x007ff02aa673c8>
                # from (pry):19:in `find'

#response['metadata']['artist_list']['artist'][0]
#response['metadata']['artist_list']['artist'][0].keys

#response['metadata']['artist_list']['artist'][0]["disambiguation"]

                # "Japanese trance artist"

