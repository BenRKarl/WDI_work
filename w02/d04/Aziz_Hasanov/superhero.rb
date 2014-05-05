module Superhero
	def fly
		"I can fly"
	end
	def shoot_web
		"I can shoot web"
	end
end

class Human
	include Superhero
	attr_accessor :name, :age, :gender
	def initialize(name, age, gender)
		@name = name
		@age = age
		@gender = gender
	end
	def name
		"My name is #{@name}"
	end
	def age
		"My name is #{@age}"
	end
	def gender
		"My name is #{@gender}"
	end
end