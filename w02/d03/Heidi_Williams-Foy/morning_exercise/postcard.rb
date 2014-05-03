Class Postcard
def initialize(ship_to_address)
	@ship_to_address = []
end

def accept_postcard(postcard)
	@postcards.push(pushcard)
	# @postcards << postcard
end

def to_s
	"We have like #{@postcards.length} postcards."
end
end