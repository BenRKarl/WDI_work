class Shelter
attr_accessor :name, :clients, :animals, :address

  def initialize(name, address)
    @name = name
    @clients = {}
    @animals = {}
    @address = address
  end
def client_count
    @clients.length

end

def animal_count
  @animals.length
end

def to_s
  "#{@name} shelter at #{@address} has #{@animals.length} animals and #{0} people"
end
def accept_client(client_name, client)
@clients[client_name] = client
end

def accept_animal(animal_name, dof)
  @animals[animal_name] = dof
end
def display_clients
  @clients.each { |x,y| puts x}

end
def display_animals
  @animals.each {|x,y| puts x}
end
def give_away_animal(animal_to_give_away)
  @animals.delete(animal_to_give_away)
end
end











