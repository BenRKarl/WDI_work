class Shelter
	attr_accessor :name, :clients, :animals

  def initialize(name, address)

    @name    = name
    @address = address
    @clients = {}
    @animals = {}

  end

  def client_count
  	@clients.keys.length
  end

  def animal_count
  	@animals.keys.length
  end

  def display_animals
  	@animals.each do |name, obj|
  		puts "#{name} the #{obj} "
  	end
  end 
  def display_clients
  	@clients.each do |name, obj|
  		puts name
  	end
  end

  def give_away_animal(name)
  	@animals.delete(name)
  end

  def accept_animal(name, animal)
  	@animals[name] = animal
  end

  def accept_client(name, client)
  	@clients[name] = client
  end

  def to_s
  	"#{name} shelter at #{@address} has #{@animals.keys.length} animals and #{@clients.keys.length} people"
  end

end














