class Client

  attr_accessor :name, :age, :pets

  def initialize (name, age)
    @name = name
    @age = age
    @pets = {}
    @clients = {}
  end

  def pet_count
    @pets.size
  end

  def to_s
    "#{@name} is a #{@age} year old with #{@pets.size} pets"
  end

  def display_pets
    @pets.each_pair do |k,v|
      puts k
    end
  end

  def give_away_pet(pet_name)
    @pets.delete(pet_name)
  end

  def accept_pet(pet_name, details)
    @pets[pet_name] = details
  end

end
