class Shelter

	attr_accessor :name, :address

def initialize(name, address)
	@name = name
	@address = address
	@clients = {}
	@animals = {}

end

def clients
@clients 
end

def client_count
	clients.length
end

def animals
@animals
end

def animal_count
	animals.length
end

def display_animals
	animal_names.each do |animal_name|
	puts animal_name
end
end

def display_clients
	client_names.each do |client_name|
	puts client_name
end
end

def client_names
	@clients.keys
end

def animal_names
	@animals.keys
end

def give_away_animal animal_name
	@animals.delete(animal_name)
end

def accept_animal animal_name, animal
@animals[animal_name] = animal
end

def accept_client client_name, client
	@clients[client_name] = client 
end

def to_s
	"#{name} shelter at #{address} has #{animal_count} animals and #{client_count} people"
	#{}"HappiTails shelter at 10 East 21st Street has 0 animals and 0 people"
end

end