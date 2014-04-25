class Apartment
  attr_accessor :price, :is_occupied, :sqft, :num_beds, :num_baths, :renters


  def initialize(price=1200, is_occupied = false, sqft=750, num_beds=2, num_baths=1, renters = [])
    @price = price              #iteger
    @is_occupied = is_occupied  #boolean
    @sqft = sqft                #integer
    @num_beds = num_beds        #integer
    @num_baths = num_baths      #integer
    @renters = []               #array of people objects
  end

  def to_s
    if @is_occupied == true
    puts "This is an unoccupied #{sqft}-sqft apartment priced at #{@price}.  It has #{num_beds} bedrooms and #{num_baths} bath(s)."
    else @is_occupied == false
    puts "This is an occupied #{sqft}-sqft apartment priced at #{@price}.  It has #{num_beds} bedrooms and #{num_baths} bath(s)."
  end


end
