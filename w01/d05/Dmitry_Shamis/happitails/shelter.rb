class Shelter
  attr_accessor :name, :clients, :animals

  def initialize(name, address)
    @name = name
    @address = address
    @clients = {}
    @animals = {}
  end

  def client_count
    @clients.count
  end

  def animal_count
    @animals.count
  end

  def display_animals
    @animals.each{|k,v| puts k}
  end

  def display_clients
    @clients.each{|k,v| puts k}
  end

  def give_away_animal(animal)
    @animals.delete(animal)
  end


  def accept_animal(name, obj)
    @animals[name] = obj
  end

  def accept_client(name, obj)
    @clients[name] = obj
  end

  "HappiTails shelter at 10 East 21st Street has 0 animals and 0 people"

  def to_s
    "#{@name} shelter at #{@address} has #{animal_count} animals and #{client_count} people"
  end
end














