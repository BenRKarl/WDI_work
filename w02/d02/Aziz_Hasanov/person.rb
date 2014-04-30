require 'Faker'

class Person
	def initialize # no params because we're using Faker to create them
		@name = Faker::Name.name
		@email = Faker::Internet.email(@name)
		@tagline = Faker::Company.catch_frase
	end
end

someone = Person.new