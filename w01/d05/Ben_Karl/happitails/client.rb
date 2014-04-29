class Client
attr_accessor :name, :age, :pets

  def initialize(name, age)
    @name = name
    @age = age
    @pets = {}
  end

  def to_s
    return "#{@name} is a #{@age} year old with #{@pets.length} pets"
  end

  def pet_count
    @pets.length
  end

  def accept_pet(client_name, pet_name)
    @pets[client_name] = pet_name
  end

  def display_pets
    @pets.keys.each { |x| puts x }
  end

  def give_away_pet(pet_name)
    @pets.delete(pet_name)
  end

end
