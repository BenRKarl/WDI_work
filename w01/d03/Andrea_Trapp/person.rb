require 'pry'

class Person
	attr_reader :name
	attr_reader :age
	attr_accessor :fav_color
	attr_reader :fav_foods

	def initialize(name, age, fav_color, fav_foods)
		@name = name
		@age = age
		@fav_color = fav_color
		@fav_foods = fav_foods
	end

	def greeting
		puts "Hello #{@name}"
	end

	# this method would overwrite the attr_accessor
	# def fav_color=(color)
	# 	@fav_color = color
	# end
	
end

person1 = Person.new("Jim",34,"blue",["lasagne","pizza","hamburger"])
person2 = Person.new("Jane",35,"red", ["cheese cake", "garden salad"])

binding.pry