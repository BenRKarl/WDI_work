require "Faker"

class Person
	def initialize
		@name = Faker::Name.name
	end

	def name
		@name
	end

	def to_s
		"hi, im #{@name.upcase}"
	end
end