class Postcard	
  def initialize(ship_to_address, message)
  	@ship_to_address = ship_to_address
  	@message = message
  end
  
  def to_s
  	"The message \"#{@message}\" is being sent to #{@ship_to_address}"
  end
end  	

puts postcard1 = Postcard.new('85 5th Ave', 'Hello from Istanbul')



class Mailbox
  def initialize
  	@postcards = []
  end
  
  def accept_postcard(postcard)
  	@postcards.push(postcard)
  	# @postcards << postcard\
  end

  def to_s
  	"The mailbox has #{@postcards.length} postcards"
  end	
end  	

mailbox1 = Mailbox.new
mailbox1.accept_postcard(postcard1) 
puts mailbox1
