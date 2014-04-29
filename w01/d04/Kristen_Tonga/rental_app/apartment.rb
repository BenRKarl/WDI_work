class Apartment

attr_accessor :unit_number, :rent, :square_footage, :num_bed, :num_bath, :occupied, :who

  def initialize (unit_number, rent, square_footage, num_bed, num_bath, occupied, who)
    @unit_number      = unit_number
    @rent             = rent
    @square_footage   = square_footage
    @num_bed          = num_bed
    @num_bath         = num_bath
    @occupied         = occupied
    @who              = who
  end

  def describe (unit_number, rent, square_footage, num_bed, num_bath, occupied, who)
    puts "#{unit_number} costs #{rent} a month, has #{square_footage} sqft, has #{num_bed} and #{num_bath}."
end



require_relative '../building'

class Building

attr_accessor :address, :apartments
attr_accessor :style
attr_accessor :num_floors

  def initialize (address, style, num_floors)
    @address        = address
    @style          = style
    @num_floors     = num_floors
    @apartments     = {} #NOTE THIS NEEDS TO BE TAKEN FROM APARTMENT PAGE!!
  end

  def apartment_count ()
    #needs to count the apartment entries from class apartment
    #needs to autonmatically adjust the 'num_apartments'
    @apartments.count
  end

  def describe (num_apartments)
    puts "This building has #{num_apartments} apartments."
  end
end



class Person

  attr_accessor :@name, :@age, :@income

  def initialize(name, age, income)
    @name       = name
    @age        = age
    @income     = income
  end

  def describe (name, age, income)
    print "#{name} is #{age} years old and earns #{income} per year."
  end
end