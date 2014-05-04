require 'bundler'
Bundler.require

module Musicbrainz
  def self.find(artist_name)

    artist_name = artist_name.gsub(' ', '%20')
    url = "http://musicbrainz.org/ws/2/artist?query=" + artist_name
    response = HTTParty.get(url)
    response['metadata']['artist_list']['artist']
  end
end


artists = Musicbrainz.find('prince')


module Musicbrainz
  def self.find(artist)
    # artist = params[artist]
    @artist = MusicBrainz::Artist.find_by_name(artist)
    @name = @artist.name
    @country = @artist.country
    @websites = @artist.urls # hash of websites
    @albums = []
    @artist.release_groups.each { |album| @albums << album.title } # array of album names
    puts @name + " is from " + @country
    @albums.each { |title| puts title }
  end
end