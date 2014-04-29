class Client

attr_accessor :name, :age, :pets

def initialize
  @name = name
  @age = age
  @pets = []
end

  def name(old_name, new_name)
    #puts
    #@clients.select {|x, y| if x = "old_name"} change to new_name
  end

  def age(name, new_age)

  end

  def pets
    pet_count = @pets.length
  end

  def display_pets
    @pets.each {|x, y| puts x}
  end

  def give_away_pet
  end

  def accept_pet
  end

def to_s (name, age)
  puts "#{name} is a #{age} year old with #{pets}"
end

end
