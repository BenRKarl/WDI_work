class Animal

  attr_accessor :name, :age, :species, :toys

  def initialize(name, age, species)
    @name = name
    @age = age
    @species = species
    @toys = []
  end

  def to_s
    return "#{@name} is a #{@age} year old #{@species} that loves #{@toys.join(", ")}"
  end
end
