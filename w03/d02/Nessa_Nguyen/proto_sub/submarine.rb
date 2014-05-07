class Sailor 
	attr_reader :name
	def initialize(name)
	@name = name
	end

	def to_s 
		"My name is #{@name}"
	end
end


class Submarine
	attr_reader :sailors
	def initialize
		@color = "yellow"
		@sailors = []
	end
	
	def accept_sailor(sailor)
		@sailors << sailor
	end

	def torpedo_sailor
		rider = @sailors.sample
		@sailors.delete(rider)

#		rider = @sailors.shuffle!.pop
	end
end	


yellow_sub = Submarine.new
yellow_sub.accept_sailor(Sailor.new("Franken"))	
yellow_sub.accept_sailor(Sailor.new("Monkey"))	
yellow_sub.accept_sailor(Sailor.new("Tyrion"))	
yellow_sub.accept_sailor(Sailor.new("Jamie"))	


# PROTO SUBMARINE

proto = ['Jeff Winkler','John Murphy','Nessa Nguyen','Jeff Drakos','Rebecca Strong','Gardner Lonsberry' ,'Jonathan Gean','Nathaniel Tuvera','Tim Hannes','Aziz Hasanov','Chris Heuberger','Dmitry Shamis' ,'Corey Leveen','Paul Hiam','Steven Doran','Ben Karl','Kristen Tonga','Wake Lankard','Carlos Pichardo' ,'Paul Gasberra','Andrea Trapp','Heidi Williams-Foy'
]

@proto_sailors = proto.map do |student|
	Sailor.new(student)
end	

proto_sub = Submarine.new
proto_sailors.each do |sailor|
	proto_sub.accept_sailor(sailor)
end

#test
#puts @proto_sub.sailors.length
#puts @proto_sub.torpedo_sailor.name
#puts @proto_sub.sailors.length


#proto_sub2 = Submarine.new
#proto.each do |name|
#	sailor = Sailor.new(name)
#	proto_sub2.accept_sailor(sailor)
#end


require 'bundler'
Bundler.require

require './submarine.rb'

get '/' do
	redirect '/sailors'
end

get '/sailors' do
	@proto_sub = proto_sub
	erb :index
end

