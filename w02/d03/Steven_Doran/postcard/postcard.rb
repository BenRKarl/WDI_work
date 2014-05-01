class Postcard

  def initialize(address, message)
    @address = address
    @message = message
  end

  def to_s
    "The message \"#{@message}\" is being sent to #{@address}"
  end

end