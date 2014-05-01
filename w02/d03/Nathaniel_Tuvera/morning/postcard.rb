class Postcard
 # attr_accessor :ship_to_address, :message # only needed for outside of class access

    def initialize(ship_to_address, message)
      @ship_to_address  = ship_to_address
      @message          = message
    end

    def to_s
       "The message '#{@message}' is being sent to '#{ship_to_address}'"
    end
end
