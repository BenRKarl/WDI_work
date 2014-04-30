require "Faker"

class Person

	attr_accessor :name, :email, :catch_phrase, :tagline

	def initialize
		@name = Faker::Name.name
		@email = Faker::Internet.email(@name)
		@catch_phrase = Faker::Company.catch_phrase
		@tagline = Faker::Lorem.sentence(word_count = 10)
	end

end

new_person = Person.new
puts new_person.name
puts new_person.email
puts new_person.catch_phrase
puts new_person.tagline

