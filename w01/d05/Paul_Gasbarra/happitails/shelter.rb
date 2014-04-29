require_relative "animal.rb"
require_relative "client.rb"

class Shelter

  attr_accessor :name, :address
  def initialize(name, address)
    @name = name
    @address = address
    @clients = {}
    @animals = {}
  end

  def clients
    @clients
  end

  def animals
    @animals
  end

  def client_count
    @clients.count
  end

  def animal_count
    @animals.count
  end

  def display_animals
    if @animals.empty?
      puts "\nNo animals."
    else
      puts "\nANIMALS \n"
      @animals.each{|pet| puts pet.to_s}
    end
  end

  def display_clients
    if clients.empty?
      puts "\nNo clients."
    else
        puts "\nCLIENTS \n"
        @clients.each{|client| puts client.to_s}
    end
  end

  def give_away_animal(animal)
    @animals.delete(animal)
  end

  def accept_animal(name, key)
    @animals[name]=key
  end

  def accept_client(name, key)
    @clients[name]=key
  end

  def to_s
    "#{@name} shelter at #{@address} has #{animal_count} animals and #{@clients.length} people"
  end

end

