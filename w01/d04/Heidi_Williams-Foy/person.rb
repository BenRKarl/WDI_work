require 'pry'
class Person
attr_accessor :favorite_color, :favorite_food
attr_reader :name

	def initialize(name,age)
		@name = name
		@age = age
		@favorite_color = "blue"
		@favorite_food = ["saag paneer", "oysters", "broccoli rabe"]
	end

def hello
puts "Hello"
end

end

me = Person.new("Heidi", "38")
me.hello
me.favorite_color="red"

puts me.favorite_color
puts me.favorite_food
