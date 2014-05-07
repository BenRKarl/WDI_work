class Sailor
	attr_accessor :name # lets us call .name
	def initialize(name)
		@name = name
	end
end

class Submarine
	attr_reader :sailors
	def initialize(color="yellow")
		@color = color
		@sailors = [] # set up emty array for furhter use
	en
	def accept_sailor(new_sailor)
		@sailors << new_sailor # accepts new_sailor into @sailor array
	end
	def torpedo_sailor
		@sailors.delete(@sailors.sample) # deleting a random sailor from array
		# another way
		# @sailors.shuffle!.pop
	end
end

proto = ['Jeff Winkler','John Murphy','Nessa Nguyen','Jeff Drakos','Rebecca Strong','Gardner Lonsberry' ,'Jonathan Gean','Nathaniel Tuvera','Tim Hannes','Aziz Hasanov','Chris Heuberger','Dmitry Shamis' ,'Corey Leveen','Paul Hiam','Steven Doran','Ben Karl','Kristen Tonga','Wake Lankard','Carlos Pichardo' ,'Paul Gasberra','Andrea Trapp','Heidi Williams-Foy'
]

proto_sub = Submarine.new # creating new instance of Submarine
proto.each do |name|
	sailor = Sailor.new(name) # creating sailor objects from proto array
	proto_sub.accept_sailor(sailor) # passing each sailor into accept_sailor method of Submarine class
end

# another way
# sailors = proto.map { |name| Sailor.new(name) }
# proto_sub = Submarine.new
# sailors.each { |sailor| proto_sub.accept_sailor(sailor) }

get '/sailors' do
	@sailors = proto_sub.sailors
	erb :index
end