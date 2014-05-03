
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
    end


  #   url = "http://musicbrainz.org/ws/2/artist?query=" + artist_name
  #   #url = "http://musicbrainz.org/ws/2/artist?query=prince"
  #   response = HTTParty.get(url)
  #   response["metadata"]["artist_list"]["artist"]
  end

  def self.rg_data(artist_id)
    rg_url = @url + "release-group?artist=#{artist_id}&type=album&limit=100"

    all_release_groups = HTTParty.get(rg_url)

    filtered_rg_data = all_release_groups['metadata']['release_group_list']['release_group'].select do |rg|
      rg['type'] == 'Album' && rg['secondary_type_list'] == nil
    end #ends the select do

    return filtered_rg_data
  end


  def self.choose_one_release(rg_id)
    r_url = @url + "release?release-group=#{rg_id}"

    all_releases = HTTParty.get(r_url)

    r_count = all_releases['metadata']['release_list']['count'].to_i

    first_filter = all_releases['metadata']['release_list']['release'].select do |release|
      release['cover_art_archive']['artwork'] == "true" && release['country'] == "US"
    end #ends the select do

    return first_filter[0]

  end

  def self.track_list(release_id)
    r_url = @url + "release/#{release_id}?inc=discids"

    all_discs = HTTParty.get(r_url)

    first_disc = all_discs['metadata']['release']['medium_list']['medium']['disc_list']['disc'][0]['id']



  end

end

















