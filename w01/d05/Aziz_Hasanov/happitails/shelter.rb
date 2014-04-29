require_relative "animal"
require_relative "client"

class Shelter
	attr_accessor :name
	
	def initialize(name)
		@name = name
	end

	def num_of_clients
		smth = Client.new
		smth.count
	end

end

# shelter = Shelter.new
# count_clients = Client.new













