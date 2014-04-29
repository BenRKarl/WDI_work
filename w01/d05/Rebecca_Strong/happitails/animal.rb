require 'Rainbow'


class Animal
  # Set up accessors and mutators for the attributes of an Animal
  # attr_accessor sets up both for you
  attr_accessor :name, :age, :species, :toys

  def initialize(name, age, species)
    @name = name
    @age = age
    @species = species
    @toys = []
  end

  def name
    if name == 'Knopka'
    elsif name == 'Toto'
    elsif name == 'Sheer Khan'
    end

    def animal_Knopka
      @age = 3
      @species = bedbug
    end

    def animal_Toto
      @age = 4
      @species = dog
    end

    def animal_Sheer_Khan
      @age = 13
      @species = Tiger
    end

    def toys
      @animal_Knopka.toys << "The_Mind"
      @animal_Toto.toys << "The_Curtain"
      @animal_Sheer_Khan.toys << "The_ManCub"
    end

    def count_toys
      @toys.keys.count
    end

    def to_s
      puts "#{@name} is a #{@age} year old #{@species} that loves #{@toys}"
    end
  end

