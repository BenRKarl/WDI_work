class Client

  attr_accessor :pets, :name, :age
def initialize (name, age)
  @name = name
  @age = age
  @pets = Hash.new

end

def pet_count
  @pets.count 
end


def to_s
  "#{name} is a #{age} year old with #{pet_count} pets"
end

def display_pets()
  @pets[name]
end

def accept_pet(name, species)
  @pets[name] = species
end

def give_away_pet(name)

  @pets.delete(name)
end




end
