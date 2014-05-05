url = "http://musicbrainz.org/ws/2/artist?query=" + artist_name

  response['metadata']['artist_list']['artist']
  end


  artists = Musicbrainz.find('bjork')
    
  	# artist_name = artist_name.gsub(' ', '%20')
