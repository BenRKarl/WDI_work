class Movie
	attr_reader :title, :poster_url, :plot
  def initialize(options)
  	#pass a single hash to initialize
  	@title = options["Title"] ||= "undefined"
  	@poster_url = options.fetch("Poster", "undefined")
  	@plot = options.fetch("Plot", "undefined")


  end
end
