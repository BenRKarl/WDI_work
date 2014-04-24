class Person
	def initialize#(name, age, favorite_color, favorite_foods)
		@name = "my name"
		@age = "my age"
		@favorite_color = "my favorite_color"
		@favorite_foods = "my favorite_foods"
	end
	def hello(ur_name)
		@name = ur_name
		puts "Hello, #{@name}"
	end
	def color(ur_color)
		@favorite_color = ur_color
		puts "#{@name}'s favorite color is #{ur_color}"
	end
	def read_all
		puts "#{@name}, #{@age}, #{@favorite_color}, #{@favorite_foods}"
	end
end

someone = Person.new
#someone("aziz", 25, "red", "pizza")
someone.hello("bob")
someone.color("red")
someone.read_all