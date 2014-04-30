class Shelter
  attr_accessor :name, :clients, :animals, :address
def initialize(name, address)
  @name = name
  @clients = {}
  @animals = {}
  @address = address
end
  def give_away_animal(animal_name)
  @animals.delete(animal_name)
  end
  def animal_count
    @animals.length
  end
  def display_clients
    @clients.each {|x, y| puts x}
  end
  def to_s
    "#{name} shelter at #{address} has #{animal_count} animals and #{client_count} people"
  end
  def display_animals
    @animals.each {|x, y| puts x}
  end
  def client_count
    @clients.length
  end
  def accept_client(client_name, client_object)
    @clients[client_name] = client_object
  end
  def accept_animal(animal_name, animal_object)
    @animals[animal_name] = animal_object
  end
end














