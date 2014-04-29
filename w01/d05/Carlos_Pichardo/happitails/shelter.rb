class Shelter

 attr_accessor :name, :address, :clients, :animals

 def initialize(name, address)
 	@name = name
 	@address = address
 	@clients = {} 
 	@animals = {}
 end 

 def to_s
 	"#{@name} shelter at #{@address} has #{@animals.length} animals and #{@clients.length} people"
 	
 end

 def client_count()
 	@clients.count
 	
 end

 def animal_count()
 	@animals.count
 	
 end

 def display_animals()
 	 @animals.each {|x,y| puts x}
 	
 end

 def display_clients()
 	@clients.each {|x,y| puts x}
 	
 end

 def accept_client(client_name, another_client)
 	@clients[client_name] = another_client
 	
 end

 def accept_animal(animal_name, another_animal)
 	@animals[animal_name] = another_animal
 end

 def give_away_animal(animal_name)
 	@animals.delete(animal_name)
 end


end














