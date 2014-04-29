class Shelter

  attr_accessor :name, :address, :clients, :animals, :display_animals

  def initialize (name, address)
    @name = name
    @address = address
    @clients = {}
    @animals = {}
  end

  def client_count
    @clients.size
  end

  def animal_count
    @animals.size
  end

  def display_animals
    @animals.each_pair do |k,v|
      puts k
    end
  end

  def display_clients
    @clients.each_pair do |k,v|
      puts k
    end
  end

  def give_away_animal(pet_name)
    @animals.delete(pet_name)
  end

  def accept_animal(animal_name, details)
    @animals[animal_name] = details
  end

  def accept_client(client_name, details)
    @clients[client_name] = details
  end

  def to_s
    "HappiTails shelter at #{@address} has #{@animals.size} animals and #{@clients.size} people"
  end

end














