require 'HTTParty'

artist_name = "pixies"
release_groups = HTTParty.get("http://musicbrainz.org/ws/2/release-group/?query=artist:" + artist_name)
discography = release_groups['metadata']['release_group_list']['release_group']

discography.each {|x| puts x['title']}

