class Client
 attr_accessor :name, :age, :pets



 def initialize(name, age)
 	@name = name
 	@age = age
 	@pets = {}

 end 

 def to_s
 	"#{@name} is a #{@age} year old with #{@pets.length} pets"
 	
 end

 def display_pets()
 	@pets.each {|x,y| puts x}
 	
 end

 def pet_count()
 	@pets.count 
 	
 end


 def give_away_pet(name)
 	@pets.delete(name)
 	
 end

 def accept_pet(client_name, another_pet)
 	@pets[client_name] = another_pet
 	
 end

end
