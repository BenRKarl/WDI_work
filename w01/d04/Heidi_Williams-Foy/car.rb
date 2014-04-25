require 'pry'
class Car
	def initialize
		@num_wheels = 4
		@upholstery = "vinyl"
		@top_speed = 70
		@passengers = []
	end

	attr_accessor :top_speed
	#def top_speed
	# @top_speed
	#end
	#def top_speed=(value)
	#@top_speed = value
	#end

def num_wheels
	@nub_wheels
end

def num_wheels=(value)
	puts "helloooo"
 end

 def accept_passenger(passenger)
 	@passenger.push(passenger)
 end
end

car = Car.new

binding.pry
