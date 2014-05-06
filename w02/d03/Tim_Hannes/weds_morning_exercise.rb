

class Postcard
  def initialize(ship_to_address, message)
    @ship_to_address = ship_to_address
    @message         = message
  end

  def to_s
    "The message: '#{@message}' is being sent to #{@ship_to_address}"
  end
end

class Mailbox
  def initialize
    @postcard - []
  end

  def accept_postcard(postcard)
    @postcard.push(postcard)  #.push puts the item in an array called postcard
    # @postcards << postcard
  end

  def to_s
    "We have #{@postcards.length} postcards." #no puts bc that returns nil
  end
end
