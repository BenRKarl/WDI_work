class Client

  attr_accessor :name, :age, :pets

  def initialize(name, age)
    @name = name
    @age = age
    @pets = {}
  end

  def pet_count
    @pets.length
  end

  def to_s
    "#{@name} is a #{age} year old with #{pet_count} pets"
  end

  def display_pets
    @pets.each do |k,v|
      puts k
    end
  end

  def give_away_pet(pet_name)
    @pets.delete(pet_name)
  end

  def accept_pet(name, pet_object)
    @pets[name] = pet_object
  end
end
