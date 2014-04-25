require_relative 'apartment.rb'


class Building

  attr_accessor :address, :style, :floors, :apartment_count, :apartments

  def initialize(address, style, floors)
    @address = address
    @style = style
    @floors = floors
    @apartments = {}
  end


#   def change_address(new_address)
#     @address = address
#   end

#   def change_style(new_style)
#     @style = style
#   end

#   def change_floors(new_floors)
#     @floors = floors
#   end

  def apartment_count
    @apartments.keys.count
  end


  def to_s
    puts "The building has #{apartments.count} apartments"
  end

# def store_apartments(apartments)
#   @apartments = store_apartments
# end
end
