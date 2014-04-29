class Client
  attr_accessor :name, :age, :pets

  def initialize(name, age, pets=nil)
    @name = name
    @age  = age
    @pets = {}
  end

  def pet_count
    @pets.size
  end

  def accept_pet(name, pet)
    @pets[name] = pet
  end

  def give_away_pet(name)
    @pets.delete(name)
  end

  def display_pets
    @pets.each { |x, y| puts x }
  end

  def to_s
    "#{@name} is a #{@age} year old with #{@pets.size} pets"
  end
end
