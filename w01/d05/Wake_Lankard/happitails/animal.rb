# Define Animal as a class
class Animal

  # Set up accessors and mutators for the attributes of an Animal
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

  def accept_toy(toy)
    @toys.push(toy)
  end
  


  # When we display the animal using puts or print, the
  #   to_s method is called to pretty print an Animal
  def to_s

    string1 = "#{name} is a #{age} year old #{species} "
    if toys.any? 
      string2 = "that loves " + toys.join(", ")
    else
      string2 = ""
    end
    string1 + string2
   
  end
end