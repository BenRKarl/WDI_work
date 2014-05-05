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
	search_term = params[:term].downcase
	@artist_info = Musicbrainz.find(search_term)
	if @artist_info == nil
		@name = "Artist not found"
    @begin = "Begin date"   
	else
	  @artist_info = @artist_info[0]
    if @artist_info != nil
  	@name = @artist_info.fetch('name', "not found")

    	if @artist_info.fetch('type', "not found") != "not found" 
    		if @artist_info.fetch('type').downcase == "person"  
    			@begin = "Birthdate"
    			@type = "Solo artist"
    		elsif @artist_info.fetch('type').downcase == "group"
    		 	@begin = "Career start"
    		 	@type = "Group"
    		end
    	end
  		
  		area = @artist_info.fetch('area', "not found")
  			if area != "not found"
  				@country = area.fetch('name', nil)
        else
          @country = "not found"  
  			end	
  	
  		span = @artist_info.fetch('life_span', "not found")
  			if span != "not found"
  				@begin_date = span.fetch('begin', nil)
        else
          @begin_date = "not found"  
  			end
    else
    @name = "Artist not found"      
    end			
  end
	erb :show
end


#@country = @artist_info['area']['name']
#@country = @artist_info['life_span']['begin']
