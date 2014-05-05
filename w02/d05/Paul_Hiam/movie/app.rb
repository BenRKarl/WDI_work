require 'bundler'
Bundler.require

get '/' do
  erb :root
end

get '/movie' do
  movie_name = params[:movie_name].gsub(" ", "%20")
  movie = HTTParty.get("http://www.omdbapi.com/?t="+movie_name)
  movie_hash = JSON.parse(movie)
  @title        = movie_hash["Title"]
  @plot         = movie_hash["Plot"]
  @poster_url   = movie_hash["Poster"]
  erb :show
end