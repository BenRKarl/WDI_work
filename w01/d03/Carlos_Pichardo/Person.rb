class Person

attr_accessor :name, :age, :favorite_foods, :favorite_color

	def initialize(name, age, favorite_color, favorite_foods)
		@name = name
		@age = age
		@favorite_color = favorite_color
		@favorite_foods = favorite_foods
	end

	def greeting
		puts "Hello"
		
	end

	#def color(new_color)
	#	@favorite_color = new_color
		
	#end

end 


bod = Person.new('bod', 3, 'lemon like', ['lollipop', 'garasd'])

bod.greeting
puts bod.age

