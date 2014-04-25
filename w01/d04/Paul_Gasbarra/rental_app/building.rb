class Building

  attr_accessor :address, :style, :floors
    def initialize (address, style, floors)
      @address = address
      @style = style
      @floors = floors
      @apartments = Hash.new
    end

    def apartments
      @apartments
    end

    def apartment_count
      return @apartments.length
    end
    def to_s
      "This building has #{apartment_count} apartments."
    end
end

