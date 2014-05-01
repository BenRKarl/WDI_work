class Postcard
  attr_accessor :ship_to_address, :message

    def initialize(ship_to_address, message)
      @ship_to_address = ship_to_address
      @message = message
    end

    def to_s
        puts "The message '#{@message}' is being sent to '#{ship_to_address}'"
    end
end
