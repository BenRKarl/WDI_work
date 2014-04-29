class Animal

  attr_accessor :name, :age, :species, :toys

  def initialize(name, age, species)
    @name = name
    @age = age.to_i
    @species = species
    @toys = []
  end

  def to_s
    "#{name} is a #{age} year old #{species} that loves #{toys.join(", ")}"
  end

end



sam = Animal.new("Sammy", 4, "cat")
sam.toys = ["trumpet", "anvil"]
