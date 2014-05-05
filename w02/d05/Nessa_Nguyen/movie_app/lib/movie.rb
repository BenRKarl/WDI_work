class Movie 
	attr_reader :title, :poster_url, :plot

	def initialize(options)
		@title = options["Title"] ||= "undefined" 
															#undefined if not found
		@poster_url = otpions.fetch("Poster", "undefined")
									#return true or false, undef if undefined		
		@plot = otpions.fetch("Plot", "undefined")							
	end
end
