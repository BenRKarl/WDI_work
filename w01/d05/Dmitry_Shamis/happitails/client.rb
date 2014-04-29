class Client

attr_accessor :name, :age, :pets

  def initialize(name, age)
    @name = name
    @age = age
    @pets = {}
  end

  def to_s
    "#{@name} is a #{@age} year old with #{pet_count} pets"
  end

  def pet_count
    @pets.count
  end

  def pets
    @pets
  end

  def display_pets
    @pets.each { |k,v| puts k }
  end

  def give_away_pet(pet_name)
    @pets.delete(pet_name)
  end

  def accept_pet(pet_name, pet_type)
    @pets[pet_name] = pet_type
  end

end
