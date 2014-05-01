class Postcard

attr_accessor :ship_to_address, :message

def initialize(to="", message="")
  @ship_to_address = to
  @message = message

end

def to_s
"The message #{@message} is being sent to #{@ship_to_address}"
end



end


class Mailbox
  def initialize
    @postcards = []
  end

  def accept_postcard(postcard)
    @postcards << postcard
  end

  def to_s
    "There are #{@postcards.count} postcards in the mailbox."
  end


end
