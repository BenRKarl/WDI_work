module Musicbrainz
  include MusicBrainz

  MusicBrainz.configure do |c|
    c.app_name = "My Music App"
    c.app_version = "1.0"
    c.contact = "support@mymusicapp.com"
  end

  def self.find(artist)
    artist_info = MusicBrainz::Artist.find_by_name(artist)
    album_names = []
    artist_info.release_groups.each { |album| album_names << album.title } # array of album names
    artist = Artist.new(artist_info, album_names)
  end
end