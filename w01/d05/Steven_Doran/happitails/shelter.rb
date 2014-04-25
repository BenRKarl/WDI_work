class Shelter

  attr_accessor :name, :address, :clients, :animals

  def initialize (name, address)
    @name = name
    @address = address
    @clients = {}
    @animals = {}
  end

  def client_count
    @clients.length
  end

  def display_clients
    @clients.each { |client, v| puts client}
  end

  def animal_count
    @animals.length
  end

  def display_animals
    @animals.each { |animal, v| puts animal}
  end

  def give_away_animal(animal_name)
    @animals.delete(animal_name)
  end

  def accept_animal(animal_name, value)
    @animals[animal_name] = value
  end

  def accept_client(client_name, value)
    @clients[client_name] = value
  end

  def to_s
    "#{@name} shelter at #{@address} has #{@animals.length} animals and #{@clients.length} people"
  end


end














