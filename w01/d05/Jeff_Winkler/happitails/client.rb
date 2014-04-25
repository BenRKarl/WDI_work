class Client

attr_accessor :name, :age, :pets

  def initialize(name, age)
    @name = name
    @age = age
    @pets = {}
  end

  def pet_count
    @pets.count
  end

  def to_s
    #Beth is a 30 year old with 0 pets
    "#{@name} is a #{@age} year old with #{pet_count} pets"
  end

  def display_pets
    @pets.keys.each {|x| puts x}
  end

  def accept_pet(name, type)
    @pets[name] = type

  end

  def give_away_pet(name)
    @pets.delete(name)
  end


end
