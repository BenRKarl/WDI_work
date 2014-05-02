require 'bundler'
Bundler.require

  def band(artist_name)
  	binding.pry
  	artist_name = artist_name.gsub('', '%20')
  	suggestions = MusicBrainz::Artist.find_by_name(artist_name)    
   binding.pry
end

get '/' do
  erb :index
end

post '/artist' do
  artist_name = params[:artist_name].gsub(' ', '%20')
redirect "/artist?artist_name=#{artist_name}"
end

get '/artist' do
  artist_name = params[:artist_name]
  todays_artist_name = band(artist_name)
  @name = today_artist_name
  erb :artist 
end

