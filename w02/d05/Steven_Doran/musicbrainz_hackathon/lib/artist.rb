class Artist
  attr_reader :name, :country, :websites
  def initialize(options)
    @name = artist_info.name ||= "undefined"
    @country = artist_info.country ||= "undefined"
    @albums = album_names ||= "undefined"
  end
end