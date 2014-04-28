class Shelter

attr_accessor :name, :address, :clients, :animals

  def initialize(name, address)
    @name = name
    @address = address
    @clients = {}
    @animals = {}
  end

  def to_s
    "#{@name} shelter at #{@address} has #{animal_count} animals and #{client_count} people"
  end

  def accept_animal
    @animals.count
  end

  def clients
    @clients
  end

  def client_count
    @clients.count
  end

  def display_animals
    @animals.each { |k,v| puts k }
  end

  def display_clients
    @clients.each { |k,v| puts k }
  end

  def animal_count
    @animals.count
  end

  def give_away_animal(animal_name)
    @animals.delete(animal_name)
  end

  def accept_client(client_name, client_type)
    @clients[client_name] = client_type
  end

  def accept_animal(animal_name, animal_type)
    @animals[animal_name] = animal_type
  end

end














