class Mailbox
attr_accessor :postcards

def initialize
  @postcards = []
end

def accept_postcard(postcard)
  @postcards << postcard
end

def to_s
  "The mailbox has #{postcards.length} postcards"
end
end

class Postcard
attr_accessor :ship_to_address, :message

def initialize(ship_to_address, message)
  @ship_to_address = ship_to_address
  @message = message
end

def to_s
  "The message '#{@message}' is being sent to '#{@ship_to_address}'."
end

end

box = Mailbox.new
card = Postcard.new("Yo, what's up?", "41 Union Square West Floor 3, New York, NY 10003")
card.to_s
box.accept_postcard(card)
box.to_s
card2 = Postcard.new("What's the plan today?", "331 E. 5th St. Apt. B1, New York, NY 10003")
card2.to_s
box.accept_postcard(card2)
box.to_s
