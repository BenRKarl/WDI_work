class Client

attr_accessor :name, :age, :pets

  def initialize(name, age)
    @name = name
    @age = age
    @pets = {}
  end

  def to_s
    "#{@name} is a #{@age} year old with #{@pets.count} pets"
  end

  def pet_count
    @pets.count
  end

  def display_pets
    @pets.each {|k,v| puts k}
  end

  def give_away_pet(name)
    @pets.delete(name)
  end

  def accept_pet(name, something)
    @pets[name] = something
  end
end
