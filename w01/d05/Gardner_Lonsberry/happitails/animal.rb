# require 'client.rb'
# require 'shelter.rb'

class Animal

  attr_accessor :name, :age, :species, :toys

  # Used when creating a new animal.
  #   Example:
  #       Animal.new('Timmy', 4, 'toad')
  def initialize(name, age, species)
    @name =    name
    @age =     age
    @species = species
    @toys = toys
  end
end
