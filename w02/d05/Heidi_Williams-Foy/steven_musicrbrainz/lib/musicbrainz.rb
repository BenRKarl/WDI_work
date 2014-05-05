module Musicbrainz
  include MusicBrainz

  def self.find(artist)
    artist_info = MusicBrainz::Artist.find_by_name(artist)
    album_names = []
    artist_info.release_groups.each { |album| album_names << album.title } # array of album names
    artist = Artist.new(artist_info, album_names)
  end

end