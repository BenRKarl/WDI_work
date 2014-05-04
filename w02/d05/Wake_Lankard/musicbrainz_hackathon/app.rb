require 'bundler'
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

module MusicBrainz
  def self.find(artist_name)
    artist_name = artist_name.gsub(' ', '%20')
    url = "http://musicbrainz.org/ws/2/artist?query=" + artist_name
    response = HTTParty.get(url)
    data = response['metadata']['artist_list']['artist']
  end

  def self.gem_find(artist_name)
    data = MusicBrainz::Artist.find_by_name(artist_name)
    return data
  end

end

# artists = MusicBrainz.find('prince')

get '/' do
  erb :index
end

post '/artist' do
  @artist_name = params[:artist_name].gsub(' ', '%20')
  redirect "/artist?name=#{@artist_name}"
end

get '/artist' do
    artist_name = params[:name]
    data = MusicBrainz.gem_find(artist_name)
    @name = data.name
    @country = data.country
    @wiki = data.urls[:wikipedia]
    @image = data.urls[:image]
  erb :show
end


