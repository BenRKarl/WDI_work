require 'Faker'

class Person
	attr_reader :name
	def initialize
		@name = Faker::Name.name
	end

	def to_s
		"Hi I'm#{@name.upcase}"
	end

end
