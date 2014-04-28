class Animal
require_relative "shelter"
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



  get '/dogs' do
  # get a listing of all the dogs
end

get '/dog/:id' do
  # just get one dog, you might find him like this:
  @dog = Dog.find(params[:id])
  # using the params convention, you specified in your route
end

post '/dog' do
  # create a new dog listing
end

put '/dog/:id' do
  # HTTP PUT request method to update an existing dog
end

delete '/dog/:id' do
  # HTTP DELETE request method to remove a dog who's been sold!
end




  # When we display the animal using puts or print, the
  #   to_s method is called to pretty print an Animal
    def to_s
     "#{@name} is a #{@age} year old #{@species} that loves #{@toys}, #{@toys}"
    end
end

