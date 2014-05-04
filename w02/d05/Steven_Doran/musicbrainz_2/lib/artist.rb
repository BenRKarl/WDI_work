class Artist

  attr_reader :name, :country, :albums
  
  def initialize(artist_info, album_names)
    @name = artist_info.name ||= "undefined"
    @country = artist_info.country ||= "undefined"
    @albums = album_names ||= "undefined"
  end

end