require 'bundler'
Bundler.require

get '/' do 

	erb :root
end


post '/search' do
	artist = params[:artist_name].gsub(" ","%20")
	redirect "/search?term=#{artist}"
end



module Musicbrainz
	def self.find(artists_name)
		artist_name = artists_name.gsub(' ', '%20') 
		url = "http://musicbrainz.org/ws/2/artist?query="+artist_name
		response = HTTParty.get(url)
		
		@artist_array = response['metadata']['artist_list']['artist']						
	end
end
#array of artists	


get '/search' do
	artist_array = Musicbrainz.find(params[:term])
	if artist_array == nil
		name = "Artist not found"
	else
	  @artists = []
    artist_array.each do |artist_info|
  	  name = artist_info.fetch('name', "Artist not found") 
      if name != "Artist not found"
    	if artist_info.fetch('type', "not found") != "not found" 
    		if artist_info.fetch('type').downcase == "person"  
    			type = "Solo artist"
    		elsif artist_info.fetch('type').downcase == "group"
    		 	type = "Group"  
    		end
    	end
  		
  		area = artist_info.fetch('area', nil)
 			if area
 				country = area.fetch('name', "not found")
      else
        country = "not found"  
 			end	
  	
  		span = artist_info.fetch('life_span', "not found")
 			if span != "not found"
 				begin_date = span.fetch('begin', 'not found')
 			end

      tag_list = []
      if artist_info['tag_list'] != nil 
        tag = artist_info['tag_list']['tag']
        if tag.is_a? Array
          3.times do
          atag = tag.sample  
          tag_list << atag['name'].capitalize 
          end
        else 
          tag_list << tag['name'].capitalize 
        end
      else   
          tag_list << "no tag associated"
      end 
      end # != artist not found
      @artists << [name, country, type, begin_date, tag_list]  
    end 
  end			

	erb :show_v2
end
