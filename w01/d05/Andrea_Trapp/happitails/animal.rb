class Animal
  attr_accessor :name, :toys

  def initialize(name, age, species)
    @name    = name
    @age     = age
    @species = species
    @toys    = []
  end

  def to_s
    "#{@name} is a #{@age} year old #{@species} that loves #{@toys.join', '}"
  end

end
