require'faker'
require 'pry'

class Person
	attr_reader :name, :email, :favthing, :catchphrase
	def initialize
		@name = Faker::Name.name
		@email = Faker::Internet.email(@name)
		@favthing = Faker::Commerce.color + " " + Faker::Commerce.product_name
		@catchphrase = Faker::Company.catch_phrase
	end

	#cn make a method to give name a company and cat them to be matching email
end
joe = Person.new
binding.pry