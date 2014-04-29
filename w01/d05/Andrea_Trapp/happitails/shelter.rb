class Shelter

	attr_accessor :name, :animals, :clients

	def initialize(name, address)
		@name = name
		@address = address
		@animals = {}
		@clients = {}
	end



	def display_clients
		puts @clients.keys
	end

	def animal_count
		@animals.length
	end

	def display_animals
		@animals.each { |key, value| puts "#{key}"}		
	end

	def display_clients
		@clients.each { |key, value| puts "#{key}"}
	end

	def to_s
		"#{@name} shelter at #{@address} has #{@animals.length} animals and #{@clients.length} people"
	end

	def client_count
		@clients.length
	end

	def accept_animal(name, animal)
		@animals[name] = animal
	end

	def accept_client(name, client)
		@clients[name] = client
	end

	def give_away_animal(name)
		@animals.delete(name)
	end
end














