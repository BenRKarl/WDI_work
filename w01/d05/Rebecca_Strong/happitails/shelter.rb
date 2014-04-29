require 'Rainbow'
require_relative '../animal'
require_relative '../client'

class Shelter

  attr_accessor :changeable_name, :number_of_animals, :number_of_clients

  def initialize (address, animals, clients)
    @name = name
    @animals = animals
    @clients = clients
  end

  def name
    if name == 'Happitails'
    elsif name == 'Animal Farm'
    elsif name == 'Animal House'
    end

    def address
      if address == "10 East 21st St"
      elsif address == "Somewhere Upstate"
      elsif address == "Not In Any State"
      end

      def number_of_animals=(value)
        number_of_animals=value
      end

      def number_of_clients=(value)
        number_of_clients=value
      end

      def count_animals
        @animals.keys.count
      end

      def count_clients
        @clients.keys.count
      end

      def display_animals
        @shelter.animals["Knopka"] = Animal.new
        @shelter.animals["Toto"] = Animal.new
        @shelter.animals["Sheer Khan"] = Animal.new
        puts "Knopka, Toto, Sheer Khan"
      end

      def display_clients
        @shelter.clients["Kafka"] = Client.new
        @shelter.clients["Dorothy"] = Client.new
        @shelter.clients["Mowgli"] = Client.new
        puts "Kafka, Dorothy, Mowgli"
      end


      def animal_giveaway
        h1 = ["a" => "Knopka", "b" => "Toto", "c" => "Sheer Khan" ]
        h2 = ["a", 1, "b", 1, "c", 1 ]
        h3 = ["a", 0, "b", 0, "c", 0]
        h2.merge(h3)
      end


      def animal_accept
        h1 = ["a" => "Knopka", "b" => "Toto", "c" => "Sheer Khan" ]
        h2 = ["a", 0, "b", 0, "c", 0 ]
        h3 = ["a", 1, "b", 1, "c", 1]
        h2.merge(h3)
      end

      def client_accept
        h1 = ["a" => "Kafka", "b" => "Dorothy", "c" => "Mowgli" ]
        h2 = ["a", 0, "b", 0, "c", 0 ]
        h3 = ["a", 1, "b", 1, "c", 1]
        h2.merge(h3)
      end


      def greet
        puts "Happitails shelter at 10 East 21st Street has #{@number_of_animals} animals and #{@number_of_clients} clients"
      end


    end

    new_shelter = Shelter.new("Happitails", "10 East 21st Street")
    new_shelter = Shelter.new("Animal Farm", "Somewhere Upstate")
    new_shelter = Shelter.new("Animal House", "Not In Any State")

    display_animals = Animal.new ("Knopka" "Toto" "Sheer Khan")
    display_clients = Client.new ("Kafka" "Dorothy" "Mowgli")


