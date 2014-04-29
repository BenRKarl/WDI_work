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
  def pet_count
    @pets = pets.length
  end
  def display_pets
    @pets.each do | name, obj_name|
      puts name
    end
  end
  def give_away_pet(pet_to_give_away)
    @pets.delete(pet_to_give_away)
  end
  def accept_pet(pet_to_be_accepted, pet_accept)
    @pets[pet_to_be_accepted] = pet_accept

  end
end
