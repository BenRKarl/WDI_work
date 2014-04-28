class Animal

attr_accessor :name, :age, :species, :toys

  def initialize(name, age, species)
    @name = name
    @age = age
    @species = species
    @toys = []
  end

  # When we display the animal using puts or print, the
  #   to_s method is called to pretty print an Animal
  def to_s
    "#{@name} is a #{@age} year old #{@species} that loves #{toys.join(', ')}"
  end
end