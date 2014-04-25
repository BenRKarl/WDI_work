require_relative 'apartment.rb'
# require 'pry'

class Building

  attr_accessor :address, :style, :floors, :apartments
  
  def initialize(address, style, floors)
  	@address = address
  	@style = style
  	@floors = floors
    @apartments = {}
  end


  def to_s
# binding.pry 
    "This building has #{apartment_count} apartments."
  end

  def apartment_count
    @apartments.keys.count
  end
  
end