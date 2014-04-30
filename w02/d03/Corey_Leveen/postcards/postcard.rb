class Postcard
  def initialize(ship_to_address, message)
    @ship_to_address = ship_to_address
    @message = message
  end

  def to_s
    "The message '#{@message}' is being sent to '#{@ship_to_address}'"
  end
end

my_postcard = Postcard.new("41 Union Square West", "Hello worrrrrrld!")
class Mailbox
  def initialize
    @postcards = []
  end

  def accept_postcard(postcard)
    @postcards << postcard
  end

  def to_s
    "The mailbox has #{@postcards.size} postcards."
  end
end
puts my_postcard
my_mailbox = Mailbox.new
my_mailbox.accept_postcard(my_postcard)
puts my_mailbox
