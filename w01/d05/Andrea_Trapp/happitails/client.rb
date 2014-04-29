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

  def accept_pet(name, animal)
  	@pets[name] = animal
  end

  def display_pets
  	@pets.each { |key, value| puts "#{key}" }
  end

  def give_away_pet(name)
  	@pets.delete(name)
  end

  def pet_count
  	@pets.length
  end
end
