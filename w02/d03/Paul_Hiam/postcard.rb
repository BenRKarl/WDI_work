
#WTF why can't I put letter in box??
require 'pry'
class Postcard
	
	def initialize(ship_to, message)
		@ship_to = ship_to
		@message = message
	end

	def to_s
		"The message #{@message} is being sent to #{@ship_to}."
	end
end


hi = Postcard.new('here', 'do it now')


class Mailbox
	
	def initialize
		@letters = []	
	end

	def take_letter(postcard)
		@letters.push(postcard)

	end

	def to_s
		"We have #{@letters.length} postcards to send."
	end

end
box = Mailbox.new
binding.pry