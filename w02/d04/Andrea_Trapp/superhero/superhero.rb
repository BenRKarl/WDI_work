
module Superhero

	def fly
		"I can fly"
	end

	def shoot_web
		"I can shoot the web"
	end

end


class Human
	
	attr_accessor :name, :age, :gender

	def initialize(name, age, gender)
		@name = name
		@age = age
		@gender = gender
	end

end


normal_man = Human.new("John","30","male")
normal_woman = Human.new("Jane","30","female")
super_man = Human.new("Clark","33","man").extend(Superhero)
super_woman = Human.new("Ronda","32","female").extend(Superhero)

puts "#{normal_man.name} is #{normal_man.age} years old and a #{normal_man.gender}"
puts "#{normal_woman.name} is #{normal_woman.age} years old and a #{normal_woman.gender}"

puts "#{super_man.name} is #{super_man.age} years old and a #{super_man.gender}"
puts "#{super_man.name} is a Superhero, he says \"#{super_man.fly}\""

puts "#{super_woman.name} is #{super_woman.age} years old and a #{super_woman.gender}"
puts "#{super_woman.name} is a Superhero, she says \"#{super_woman.shoot_web}\""


