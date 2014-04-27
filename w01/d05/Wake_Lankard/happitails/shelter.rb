class Shelter

  attr_accessor :name, :clients, :animals
  def initialize (name, address)
    @name = name
    @address = address
    @clients = Hash.new
    @animals = Hash.new
  end

  def client_count
    @clients.count 
  end

  def animal_count
    @animals.count 
  end


  def display_animals
    @animals.keys.each { |x| puts x }
  end

  def accept_client (client_name, client)
    @clients[client_name] = client
  end

  def give_away_animal(animal)
    @animals.delete(animal.name)
    puts "Animal given away: #{animal}"
  end

  def accept_animal(name, animal)
    @animals[name]=animal
    puts "Animal accepted: #{animal}"
    display_animals
  end

  def display_clients
    @clients.keys.each { |x| puts x }
  end


  def to_s
    "#{@name} shelter at #{@address} has #{animal_count} animals and #{client_count} people"
  end





end














