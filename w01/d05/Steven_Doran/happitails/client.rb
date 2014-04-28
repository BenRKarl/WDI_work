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

  def display_pets
    @pets.each { |animal, v| puts animal}
  end

  def give_away_pet(pet_name)
    @pets.delete(pet_name)
  end

  def accept_pet(pet_name, value)
    @pets[pet_name] = value
  end

  def to_s
    "#{@name} is a #{@age} year old with #{@pets.length} pets"
  end

    

end
