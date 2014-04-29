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
    @animals.each {|k,v| puts k}
  end

  def display_clients
    @clients.each {|k,v| puts k}
  end

  def give_away_animal(name)
    @animals.delete(name)
  end

  def accept_animal(name, something)
    @animals[name]=something
  end

  def accept_client(name, something)
    @clients[name]=something
  end

  def to_s
    "#{@name} shelter at #{@address} has #{@animals.count} animals and #{@clients.count} people"
  end
end













