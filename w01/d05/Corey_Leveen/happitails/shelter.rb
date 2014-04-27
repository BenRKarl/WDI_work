class Shelter
  attr_accessor :name, :address, :clients, :animals

  def initialize(name, address)
    @name = name
    @address = address
    @clients = {}
    @animals = {"Fluffy" => "Cat"}
  end

  def client_count
    @clients.length
  end

  def animal_count
    @animals.length
  end

  def to_s
    "#{@name} shelter at #{@address} has #{@animals.length} animals and #{@clients.length} people"
  end

  def accept_animal(animal_name, dof)
    @animals[animal_name] = dof
  end

  def give_away_animal(animal_to_give_away)
    @animals.delete(animal_to_give_away)
  end

  def accept_client(client_name, client)
    @clients[client_name] = client
  end

  def display_animals
    @animals.each {|x,y| puts x }
  end

  def display_clients
    @clients.each { |x,y| puts x }
  end


end














