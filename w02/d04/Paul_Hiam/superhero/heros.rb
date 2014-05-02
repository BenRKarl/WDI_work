class Human
	attr_accessor :name, :gender, :age, :hometown, :strength, :canfly
  def initialize(name, gender)
  	@name = name
  	@age = 18
  	@gender = gender
  	@hometown = 'Metropolis'
  	@strength = 'normal'
  	@canfly = 'no'
  end

end

module Super
	def fly
		puts 'faster than a speeding...something. wow. so fast. so flying.'
		@canfly = 'heck yes SWOOOSH!'

	end

	def hulk_out
		@strength = 'Mega..Hulk Smash!!'
		
	end
end

joey = Human.new('Joey', 'boy')
joey.extend(Super)
joey.hulk_out

jessie = Human.new('Jessie', 'f')
jessie.extend(Super)
jessie.fly

