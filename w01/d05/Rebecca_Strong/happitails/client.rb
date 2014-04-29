require 'Rainbow'

require_relative '../animal'

class Client

  def initialize(name, age)
    @name = name
    @age = age
    @pets = []
  end

  def name
    if name == 'x'
    elsif name == 'y'
      puts "What's In A Name?"
    end

    def age
      if age == 'x'
      elsif age == 'y'
        puts "Who's counting?"
      end

      def count_pets
        @pets.keys.count
      end

      def display_pets
        @shelter.pets["Knopka"] = Animal.new
        @shelter.pets["Toto"] = Animal.new
        @shelter.pets["Sheer Khan"] = Animal.new
        puts "Knopka, Toto, Sheer Khan"
      end

      def pet_giveaway
        h1 = ["a" => "Knopka", "b" => "Toto", "c" => "Sheer Khan" ]
        h2 = ["a", 1, "b", 1, "c", 1 ]
        h3 = ["a", 0, "b", 0, "c", 0]
        h2.merge(h3)
      end


      def pet_accept
        h1 = ["a" => "Knopka", "b" => "Toto", "c" => "Sheer Khan" ]
        h2 = ["a", 0, "b", 0, "c", 0 ]
        h3 = ["a", 1, "b", 1, "c", 1]
        h2.merge(h3)

      def to_s
        puts "#{@name} is a #{@age} year old with 0 pets}"
      end

end


    new_client = Client.new('Kafka', 25)
    new_client = Client.new('Dorothy', 15)
    new_client = Client.new('Mowgli', 9)
