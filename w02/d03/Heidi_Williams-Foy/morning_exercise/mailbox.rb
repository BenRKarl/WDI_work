class Mailbox
	def initialize
		@postcards = []
	end

	def accept_postcard(postcard)
		@postcards.push(postcard)
	end
end