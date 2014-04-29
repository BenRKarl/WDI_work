
class Client
	attr_accessor :name, :age, :pets

 def initialize (name, age)
 	@name = name
 	@age  = age
 	@pets ={}
 end

  def pet_count
  	@pets.length
  end

  def to_s
  	"#{@name} is a #{@age} year old with #{pets.length} pets"
  end
  
  def display_pets #return to this hash -> array behavior (andrew helped)
  	@pets.each do |name, obj_pets|
  		puts name
  	end
  end

  def give_away_pet(pet)
  	@pets.delete(pet)
  end

  def accept_pet(name, pet)
  	@pets[name] = pet
  end


end

