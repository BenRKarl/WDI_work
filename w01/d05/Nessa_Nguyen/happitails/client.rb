class Client
  attr_accessor :name, :age, :pets

  def initialize(name, age)
    @name = name
    @age = age.to_i
    @pets = {}
  end	

  def pet_count
  	@pets.count
  end	
  
  def display_pets
  	@pets.each { |pet, something| puts pet }
  end		

  def accept_pet(petget_name, petget)
  	@pets[petget_name] = petget
  end

  def give_away_pet(petgive_name)
  	@pets.delete(petgive_name)
  end

  def to_s
    "#{name} is a #{age} year old with #{pet_count} pets"
  end

end

wendy = Client.new("Wendy", 23)
