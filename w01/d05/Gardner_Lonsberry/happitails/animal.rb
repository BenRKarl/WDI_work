class Animal

  attr_accessor :name, :age, :species, :toys

  # Used when creating a new animal.
  #   Example:
  #       Animal.new('Timmy', 4, 'toad')
  def initialize(name, age, species)
    @name =    name
    @age =     age
    @species = species
    @animal  = new_animal
    @toys = toys
  end

  def toys

  end


  def new_animal
  end

  def describe
    ""
  end


  # When we display the animal using puts or print, the
  #   to_s method is called to pretty print an Animal
    def to_s
     "#{@name} is a #{@age} year old #{@species} that loves #{@toys}, #{@toys}"
    end
end

