class Postcard
	# attr_accessor :ship_to_adress, :message
	def initialize(ship_to_address, message)
		@ship_to_address = ship_to_address
		@message = message
	end
	def to_s
		"#{@message} is being sent to #{@ship_to_address}"
	end
end

new_postcard = Postcard.new("1213 ave z", "hi there")
puts new_postcard.to_s

class Mailbox
	def initialize
		@postcards = []
	end
	def accpet_postcard(postcard)
		@postcards.push(postcard)
		# another way
		# @postcards << postcard
	end
	def to_s
		"Mailbox has #{@postcards.length} postcards"
	end
end

new_mail = Mailbox.new
puts new_mail.to_s