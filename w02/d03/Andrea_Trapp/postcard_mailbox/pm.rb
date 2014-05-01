
class Postcard 

	def initialize(ship_to_address, message)
		@ship_to_address = ship_to_address
		@message = message
	end

	def to_s
		"The message '#{@message}' is being sent to '#{@ship_to_address}'"
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
		"The mailbox has #{@postcards.length} postcards"
	end

end


# new_postcard = Postcard.new("41 Union Square W New York, NY 10003", "Hello World!")
# puts new_postcard
# new_mailbox = Mailbox.new
# new_mailbox.accept_postcard(new_postcard)
# puts new_mailbox
