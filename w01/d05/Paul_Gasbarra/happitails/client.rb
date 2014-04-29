class Client
  attr_accessor :name, :age, :pets
  def initialize (name, age)
    @name = name
    @age = age
    @pets = {}
  end

  def to_s
    "#{name} is a #{age} year old with #{pets.length} pets"
  end

  def pets
    @pets
  end

  def pet_count
    @pets.length
  end

  def display_pets
    @pets.each_key{|pet| puts pet}

  end

  def give_away_pet(pet)
    @pets.delete(pet)
  end

  def accept_pet(key, name)
    @pets[key]=name
  end
end

