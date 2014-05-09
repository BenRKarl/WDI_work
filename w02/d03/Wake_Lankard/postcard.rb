class Postcard
  attr_accessor :ship_to, :message

  def initialize(ship_to=nil, message=nil)
    @ship_to = ship_to
    @message = message
  end

  def to_s
    "The message '#{@message}' is being sent to #{@ship_to}."
  end
end

class Mailbox
  attr_accessor :card_arr

  def initialize
    @card_arr = []
  end

  def input_card(card)
    @card_arr.push(card)
  end

  def to_s
    "The mailbox has #{@card_arr.count} postcards."
  end
end

card_one = Postcard.new("address 1", "message 1")
card_two = Postcard.new

# card_one.ship_to = "card one address"
# card_one.message = "card one message"
card_two.ship_to = "card two address."
card_two.message = "card two message"

puts card_one
puts card_two

my_mailbox = Mailbox.new
my_mailbox.input_card(card_one)
my_mailbox.input_card(card_two)
puts my_mailbox
