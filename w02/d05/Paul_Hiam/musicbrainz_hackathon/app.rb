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

#artist = Musicbrainz.find('css')
# return a hash of found artists 
get '/' do

erb :root
end

post  '/search' do
	artist_name = params[:artist_name].gsub(' ','%20')

	redirect "/search?term=#{artist_name}"


end

get '/search' do
#search_term = params[:term]
if Musicbrainz.find(params[:term]) == nil 
@artist_info = "Artist not found"
else 
  @artist_info = Musicbrainz.find(params[:term])[0] 
  
#end

  @name = @artist_info.fetch("name", "not found")  

  @area = @artist_info.fetch("area", "not found")
  if @area != "not found"
  @country = @area.fetch("name", "not found")
  end 
  
  
    @span = @artist_info.fetch("life_span", "not found")
  if @span != "not found"
  @start = @span.fetch("begin", "not found")
  end
end
  erb :show 
  end



