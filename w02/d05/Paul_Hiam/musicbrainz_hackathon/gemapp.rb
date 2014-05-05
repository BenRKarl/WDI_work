require 'bundler/setup'
Bundler.require

MusicBrainz.configure do |c|
  # Application identity (required)
  c.app_name = "My Music App"
  c.app_version = "1.0"
  c.contact = "support@mymusicapp.com"

  # Cache config (optional)
  c.cache_path = "/tmp/musicbrainz-cache"
  c.perform_caching = true

  # Querying config (optional)
  c.query_interval = 1.2 # seconds
  c.tries_limit = 2
end



# artist = Musicbrainz.find('css')
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
  artist  = MusicBrainz::Artist.find_by_name(search_term)
  if artist == nil
   
  else
  @name    = artist.name
  @country = artist.country 
  @type    = artist.type.downcase
  @start  = artist.date_begin  

  @youtube = artist.urls[:youtube]
  @homepage= artist.urls[:official_homepage]

 


  # @youtube = artist.urls[:youtube]
    if artist.urls[:youtube] == nil
      @youtube = "unavailable" 
    end
  # @homepage= artist.urls[:official_homepage]
  if artist.urls[:official_homepage] == nil
      @homepage = "unavailable" 
    end
  @id      = artist.id
  @artist2 = MusicBrainz::Artist.find(@id)
#binding.pry
  # @discog = MusicBrainz::Artist.discography("#{@id}")
 
  @image = "http://coverartarchive.org/release/#{@id}"

  # @lyrics = 'not available' 
  # if artist.urls[:lyrics] != nil 
  @lyrics = artist.urls[:lyrics]
    if artist.urls[:lyrics] == nil
      @lyrics = "unavailable" 
    elsif artist.urls[:lyrics].is_a? (String)
      @lyrics = artist.urls[:lyrics]
    else @lyrics = artist.urls[:lyrics][0]

    end
  end

erb :show2
end




