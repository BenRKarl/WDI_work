# Define Animal as a class
class Animal

  # Set up accessors and mutators for the attributes of an Animal
  # attr_accessor sets up both for you
  attr_accessor :name, :age, :species

  # Used when creating a new animal.
  #   Example:
  #       Animal.new('Timmy', 4, 'toad')
  def initialize(name, age, species)
    @name = name
    @age = age
    @species = species
    @toys = []
  end

  def toys()
    ## can also use append
    @toys
  end

  # When we display the animal using puts or print, the
  #   to_s method is called to pretty print an Animal
  def to_s
    toys2 = @toys*", "
    "#{name} is a #{age} year old cat that loves #{toys2}"

  end
end
