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
    @clients.each { |client, client_index| puts client}
  end

  def animal_count
    @animals.length
  end

  def display_animals
    @animals.each { |animal, animal_index| puts animal}
  end

  def give_away_animal(animal_name)
    @animals.delete(animal_name)
  end

  def accept_animal(animal_name, animal_index)
    @animals[animal_name] = animal_index
  end

  def accept_client(client_name, client_index)
    @clients[client_name] = client_index
  end

  def to_s
    "#{@name} shelter at #{@address} has #{@animals.length} animals and #{@clients.length} people"
  end


end














