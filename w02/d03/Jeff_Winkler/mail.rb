
class Postcard
  #attr_reader :ship_to_address, :message
  def initialize(ship_to_address, message)
    @ship_to_address = ship_to_address
    @message = message
  end

  def to_s
    "'#{@message}' is being sent to '#{@ship_to_address}'."
  end
end

class Mailbox
  #attr_accessor :postcards
  def initialize
    @postcards = []
  end

  def accept_postcard(postcard)
    @postcards.push(postcard)
  end

  def to_s
    "The mailbox has #{@postcards.length} postcards."
  end

end


newp = Postcard.new("here", "hello world")

newm = Mailbox.new

newm.accept_postcard(newp)
newm.accept_postcard(newp)
puts newp
puts newm



