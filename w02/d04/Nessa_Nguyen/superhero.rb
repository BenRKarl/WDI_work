# Define a Human class.  It should have attributes like name, 
# age, gender, etc.
# Define a Superhero module with Superhero methods like fly, 
# shoot_web, etc.
# Instantiate several human classes
# Extend a few of them with Superhero methods

class Human
	def initialize(name, age, occupation)
		@name = name
		@age = age
		@occupation = occupation
	end
end				

module Superhero
	def fly
		"I have super strength and flight abilities"
	end

	def shoot_web
		"I shoot web and fly between buildings"
	end	

	def teleport
		"I teleport through time and space"
	end
end

cindy = Human.new("Cindy", 26, 'Accountant')
cindy.extend(Superhero)
puts cindy.shoot_web

hannah = Human.new("Hannah", 45, 'Business manager')
hannah.extend(Superhero)
puts hannah.teleport

jim = Human.new("Jimmy", 30, 'Stock trader')
jim.extend(Superhero)
puts jim.fly








