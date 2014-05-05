require "faker"
require "sinatra"
require "sinatra/reloader"

proto = ['Jeff Winkler','John Murphy','Nessa Nguyen',
	'Jeff Drakos','Rebecca Strong','Gardner Lonsberry',
	'Jonathan Gean','Nathaniel Tuvera','Tim Hannes',
	'Aziz Hasanov','Chris Heuberger','Dmitry Shamis',
	'Corey Leveen','Paul Hiam','Steven Doran','Ben Karl',
	'Kristen Tonga','Wake Lankard','Carlos Pichardo',
	'Paul Gasberra','Andrea Trapp','Adam Schneider',
	'Heidi Williams-Foy']

# set up empty hash to store elements fro array
proto_hash = {}

# split each element of array
# (each first name-last name pair) into two more elements
first_last = proto.map do |person|
	person.split(" ")
end


first_last.each do |person|
	first = person[0]
	last = person[1]
	initials = (first[0] + last[0]).downcase.to_sym
	proto_hash[initials] = [first, last]
end

class Developer
	attr_accessor :name, :initials, :tagline
	def initialize(name, initials)
		@name = name
		@initials = initials
		@tagline = Faker::Company.catch_phrase
	end
	def to_s
		"Hello, I am #{@name}. I #{@tagline}"
	end
end

developers = []

proto_hash.each do |initials, name|
	developers << Developer.new(name, initials)
end

get '/' do
	@developers = developers.sort{ |x,y| x.initials.to_s[-1] <=> y.initials.to_s[-1] }
	# @proto_hash = proto_hash
	erb :index
end