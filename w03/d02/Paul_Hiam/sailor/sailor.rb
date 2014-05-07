
class Sailor
	attr_accessor :name
	def initialize(name)
		@name = name
	end
	def to_s
		puts 'Sailor' + " #{@name}"
	end

end



