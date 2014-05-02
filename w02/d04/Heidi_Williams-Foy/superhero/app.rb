class Human

	def initialize(name, age, gender)
		@name = name
		@age = age
		@gender = gender
	end

	def say_name
		puts "Hi! My name is #{@name}!"
	end

end

module Superhero

	def fly
		puts "It's a bird! It's a plane! No, it's me flying!!"
	end

	def shoot_web
		puts "BAM! Feel my web!"
		puts "Take that, bad guys!"
	end

end

bob = Human.new("Bob S.", 32, "Male")
clark = Human.new("Clark K.", 35, "Male")
peter = Human.new("Peter P.", 28, "Male")

clark.extend(Superhero)
peter.extend(Superhero)

clark.say_name
clark.fly

peter.say_name
peter.shoot_web

bob.say_name
begin
	bob.fly
rescue
	puts "Oh no! Bob can't fly."
end