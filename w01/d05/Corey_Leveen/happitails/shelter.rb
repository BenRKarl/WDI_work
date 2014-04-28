class Shelter
  attr_accessor :name, :address, :clients, :animals

  def initialize(name, address)
    @name = name
    @address = address
    @clients = {}
    @animals = {}
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

  def accept_animal(animal_name, animal_object)
    @animals[animal_name] = animal_object
  end

  def give_away_animal(animal_to_give_away)
    @animals.delete(animal_to_give_away)
  end

  def accept_client(client_name, client_object)
    @clients[client_name] = client_object
  end

  def display_animals
    @animals.each {|x,y| puts x }
  end

  def display_clients
    @clients.each { |x,y| puts x }
  end


end













