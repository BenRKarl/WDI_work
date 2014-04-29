class Shelter
  attr_accessor :name, :address, :animals, :clients, :adopted

  def initialize (name, address)
    @name = name
    @address = address
    @animals = {}
    @clients = {}
   # @up_for_adoption = {}
    @adopted = {}

  end

  def accept_client(name, user_name)
    @clients[name] = user_name
  end

  def accept_animal(name, animal_obj)
  #  user_name = name << "_animal"
    @animals[name] = animal_obj
  end

  def display_animals
    @animals.each {|x, y| puts x}
  end

  def display_clients
    @clients.each {|x, y| puts x}
  end

  def animal_count
    animal_count = @animals.length
  end

  def client_count
    client_count = @clients.length
  end

  def up_for_adoption ()
  end

  def give_away_animal #(name)
    #use shift to remove key value pair from one hash and reutnrs it as two item array
    give_away_animal = adopted[:name] = animals.delete(:name)
    #name.to_sym
    #animals.get(:Rou)
    #give_away_animal = @animals.shift

  end

  def to_s
    "#{name} shelter at #{address} has #{animal_count} animals and #{client_count} people."
  end

  def welcome
   puts "Welcome to #{name}! We are an animal shelter and rehoming agency located at #{adress}."
  end
end
