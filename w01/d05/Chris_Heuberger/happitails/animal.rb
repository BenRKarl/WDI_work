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
    "#{@name} is a #{@age} year old #{@species} that loves #{@toys}"
  end

end

# random_animals = ["porpoise", "camel", "lobster", "kangaroo", "wombat", "chameleon"]

# plurals = random_animals.map {|x| x + "s"}
# alpha = random_animals.sort
# reverse_alpha = random_animals.sort.reverse
# reverse_string = random_animals.map {|x| x.reverse}
# word_length = random_animals.sort {|x| x.length}
# word_length = random_animals.sort {|x,y| x.length <=> y.length}
# last_char = random_animals.sort {|x,y| x[-1] <=> y[-1]}

# with .map -> returns new array
# with .each  —> returns original array
