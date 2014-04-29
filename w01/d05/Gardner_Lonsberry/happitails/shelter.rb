# require 'animal.rb'
# require 'client.rb'

class Shelter

  attr_reader :shelter, :animals, :clients
  attr_writer :name, :address

  def initialize(animals, clients)
    @address = address
    @name = name
    @clients = clients
  end


  def create_shelter(animals, clients)
  end

  def name
  end

  def address
    puts '10 East 21st Street'
  end



  def clients_count
    @client.count
  end

 @shelter = Shelter.new("x", "x")


  # def initialize(shelter, animal, clients)
  #   @shelter = {}
  #   @animal = {}
  #   @clients = clients

  end

def self.create(params)
  @name = params[:name]
  @age  = params[:age]
end
