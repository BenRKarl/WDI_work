require 'faker'

class Person
	def initialize
		@name = Faker::Name.name
		@email = Faker::Internet.email
		@tagline = Faker::Company.tagline 
	end 

	Person.new


		
