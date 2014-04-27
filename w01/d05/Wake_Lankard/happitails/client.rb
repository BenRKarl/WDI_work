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
  @pets.keys.each { |x| puts x }
end

def accept_pet(name, animal)
  @pets[name] = animal
  puts "Accepted pet: #{animal}"
  #todo: pull the accepted pet name from the last member of the pets has to make sure that it was accepted.
end

def give_away_pet(name)

  @pets.delete(name)
end




end
