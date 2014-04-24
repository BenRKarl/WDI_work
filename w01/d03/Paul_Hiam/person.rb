
class Person
	attr_accessor :name, :age, :fav_color, :fav_foods
	def initialize (name='stranger')
		@name = name
		@age
		@fav_color
		@fav_foods
	end

	def hello
		puts "hello I'm #{name}"
	end
	def dossier
		puts "name: #{@name}, age: #{@age}, fav color:#{@fav_color}, fav foods:#{@fav_foods}"
	end
end
