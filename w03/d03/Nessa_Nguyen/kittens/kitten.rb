class Kitten
	attr_reader :url

	def initialize 
		@url = "http://placekitten.com/#{rand(100..200)}/#{rand(100..200)}"
	end

end

@kitten = Kitten.new.url
