class Shelter
  attr_accessor :name, :address, :clients, :animals

  def initialize(name, address) 
  	@name = name
  	@address = address	
  	@clients = {}
  	@animals = {}
  end	

  def client_count
  	@clients.keys.length
  end	

  def animal_count
  	@animals.keys.length
  end	

  def display_animals
  	@animals.each { |k, v| puts k }
  end	

  def display_clients
  	@clients.each { |client, value| puts client }
  end	

  def give_away_animal(animal_give)
  	@animals.delete(animal_give)
  end	

  def accept_animal(animal_accept, new_animal)
  	@animals[animal_accept] = new_animal
  end	

  def accept_client(client_name, new_client)
  	@clients[client_name] = new_client
  end	

  def to_s
  	"#{name} shelter at #{address} has #{animal_count} animals and #{client_count} people"
  end	
end

shelter = Shelter.new("Happytails", "521 West End Ave")












