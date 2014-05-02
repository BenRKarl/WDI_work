require "bundler/setup"
Bundler.require

module Musicbrainz

  def self.find(artist_name)
    #call to API

    artist_name = artist_name.gsub(" ", "%20")
    url = "http://musicbrainz.org/ws/2/artist?query=" + artist_name
    response = HTTParty.get(url)
    response["metadata"]["artist_list"]["artist"]
  end
end

get "/" do
  redirect "/index"
end

get "/index" do
  erb :index
end

post "/show" do
  artist = params[:artist]
  # @artist_info = Musicbrainz.find(artist)
  # @name = @artist_info["name"]
  # @country = @artist_info["area"]["name"]

  binding.pry
  redirect "show"
end

get "/show" do
  erb :show
end
