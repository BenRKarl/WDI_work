class Shelter
attr_accessor :name, :address, :animals, :clients

def initialize(name, address)
  @name = name
  @address = address
  @animals = {}
  @clients = {}
end

def animal_count
  @animals.length
end

def client_count
  @clients.length
end

def give_away_animal(animal_name)
    @animals.delete(animal_name)
end

def accept_client(shelter_name, client_name)
  @clients[shelter_name] = client_name
end

def accept_animal(shelter_name, animal_name)
  @animals[shelter_name] = animal_name
end

def display_clients
    puts "Here's a list of our clients:"
    @clients.keys.each { |x| puts "-- #{x}" }
end

def display_animals
    puts "Here are the animals we have up for adoption right now: "
    @animals.keys.each { |x| puts "-- #{x}" }
end

def to_s
  return "#{@name} shelter at #{@address} has #{@animals.length} animals and #{@clients.length} people"
end

end














