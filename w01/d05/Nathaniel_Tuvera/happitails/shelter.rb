class Shelter
  attr_accessor :name, :address, :clients, :animals

  def initialize(name, address)
    @name     = name
    @address  = address
    @clients  = {}
    @animals  = {}
  end

  def client_count
    @clients.size
  end

  def animal_count
    @animals.size
  end

  def accept_client(name, client)
    @clients[name] = client
  end

  def display_clients
    @clients.each { |k, v| puts k }
  end


  def accept_animal(name, animal)
    @animals[name] = animal
  end

  def display_animals
    @animals.each { |k, v| puts k }
  end

  def give_away_animal(name)
    @animals.delete(name)
  end

  def to_s
    "#{name} shelter at #{address} has #{animals.size} animals and #{clients.size} people"
  end
end
