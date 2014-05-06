
module Musicbrains
  @url = "http://musicbrainz.org/ws/2/"

  def self.find(artist_name)
    artist_name = artist_name.gsub(' ','%20')
    artist_url = @url + "artist/?query=artist:" + artist_name
    data = HTTParty.get(artist_url)
    artists_count = data['metadata']['artist_list']['count'].to_i
    if artists_count == 1
      return data['metadata']['artist_list']['artist']
    else
      return data['metadata']['artist_list']['artist'][0]
    end #if artist count check
  end #end self.find

  def self.rg_data(artist_id)
    rg_url = @url + "release-group?artist=#{artist_id}&type=album&limit=100"
    all_release_groups = HTTParty.get(rg_url)
    filtered_rg_data = all_release_groups['metadata']['release_group_list']['release_group'].select do |rg|
      rg['type'] == 'Album' && rg['secondary_type_list'] == nil
    end #ends the select do
    return filtered_rg_data
  end #end self.rg_data

  def self.choose_one_release(rg_id)
    r_url = @url + "release?release-group=#{rg_id}"
    all_releases = HTTParty.get(r_url)

    r_count = all_releases['metadata']['release_list']['count'].to_i
    if r_count == 1
      return all_releases['metadata']['release_list']['release']
    else
      first_filter = all_releases['metadata']['release_list']['release'].select do |release|
        release['cover_art_archive']['artwork'] == "true" && release['country'] == "US" && release['barcode'] != nil
      end #ends the select do
      if first_filter.empty?
        second_filter = all_releases['metadata']['release_list']['release'].select do |release|
          release['country'] == "US" && release['barcode'] != nil
        end #ends the select do
        return second_filter[0]
      else
        return first_filter[0]
      end
    end
  end

  def self.track_list(release_id)
    r_url = @url + "release/#{release_id}?inc=discids"
    all_discs = HTTParty.get(r_url)
    #binding.pry
    ml_count = all_discs['metadata']['release']['medium_list']['count'].to_i
    if ml_count == 1
      all_discs = all_discs['metadata']['release']['medium_list']['medium']
    else
      all_discs = all_discs['metadata']['release']['medium_list']['medium'][0]
    end
    #binding.pry
    disc_count = all_discs['disc_list']['count'].to_i
    if disc_count == 1
      first_disc = all_discs['disc_list']['disc']['id']
    elsif disc_count == 0
      return nil
    else
      first_disc = all_discs['disc_list']['disc'][0]['id']
    end
    d_url = @url + "discid/#{first_disc}?inc=recordings"
    recordings = HTTParty.get(d_url)
    t_count = recordings['metadata']['disc']['release_list']['count'].to_i
    if t_count == 1
      ml_count = recordings['metadata']['disc']['release_list']['release']['medium_list']['count'].to_i
      if ml_count == 1
        tracks = recordings['metadata']['disc']['release_list']['release']['medium_list']['medium']['track_list']['track']
      else
        tracks = recordings['metadata']['disc']['release_list']['release']['medium_list']['medium'][0]['track_list']['track']
      end
    else
      ml_count = recordings['metadata']['disc']['release_list']['release'][0]['medium_list']['count'].to_i
      if ml_count == 1
        tracks = recordings['metadata']['disc']['release_list']['release'][0]['medium_list']['medium']['track_list']['track']
      else
        tracks = recordings['metadata']['disc']['release_list']['release'][0]['medium_list']['medium'][0]['track_list']['track']
      end
    end
    track_list = tracks.map do |track|
      track['recording']['title']
    end # ends map do
    return track_list
  end

  def self.artwork(release)
    has_art = release['cover_art_archive']['artwork']
    if has_art == "true"
      url = "http://coverartarchive.org/release/#{release['id']}"
      info = HTTParty.get(url)
      return info['images'][0]['thumbnails']['small']
    else
      return nil
    end
  end
end