class Client
  attr_accessor :name, :age, :pets
  def initialize(name, age)
    @name = name
    @age = age
    @pets = {}
  end
  def accept_pet(pet_name, pet_object)
    @pets[pet_name] = pet_object
  end
  def give_away_pet(pet_name)
    @pets.delete(pet_name)
  end
  def pet_count
    pets.count
  end
  def display_pets
    @pets.each {|key, value| puts key}
  end
  def to_s
    "#{name} is a #{age} year old with #{pets.count} pets"
  end
end
