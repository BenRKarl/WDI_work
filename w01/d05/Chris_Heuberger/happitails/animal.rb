# Define Animal as a class
class Animal

  # Set up accesso and mutators for the attributes of an Animal
  # attr_accessor sets up both for you
  attr_accessor :name, :age, :species, :toys

  # Used when creating a new animal.
  #   Example:
  #       Animal.new('Timmy', 4, 'toad')
  def initialize(name, age, species)
    @name = name
    @age = age
    @species = species
    @toys = []
  end

  # When we display the animal using puts or print, the
  #   to_s method is called to pretty print an Animal
  def to_s
    puts "#{:name} is a #{:age} year old #{:species} that loves #{:toys}"
  end
end
