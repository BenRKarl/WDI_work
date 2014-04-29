class Shelter

  attr_accessor :name, :address, :animals, :clients

  def initialize(name, address)
    @name =name
    @address = address
    @animals = {}
    @clients = {}
  end

  def accept_client(name, client)
    @clients[name]=client
  end

  def accept_animal(name, animal)
    @animals[name] = animal
  end

  def display_clients
    @clients.keys.each {|x| puts x}
  end

  def display_animals
    @animals.keys.each {|x| puts x}
  end

  def animal_count
    @animals.count
  end

  def client_count
    @clients.count
  end

  def give_away_animal(name)
    @animals.delete(name)
  end

  def to_s
    #HappiTails shelter at 10 East 21st Street has 0 animals and 0 people
    "#{@name} shelter at #{@address} has #{animal_count} animals and #{client_count} people"
  end

end














