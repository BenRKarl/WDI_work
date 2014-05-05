require 'faker'

class Person
	def initialize
		@name = Faker::Name.name
		@email = get_email
		@second_email = Faker::Internet.email(@name)
		@catchphrase

	end 

 # => "angelina.labadie@hotmail.com"