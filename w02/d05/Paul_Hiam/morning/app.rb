require 'bundler/setup'
Bundler.require
# Part 1

# Make a hash of names
# The key should be their initials as a symbol
# :mm for Matt Marcello
# The value should be an array for [first_name, last_name]
# ['Matt', 'Marcello'] ALL of these names should be in your hash:


# Create a Developer class with the attributes name, initials, and tagline (generated with faker.)
# Give the class a to_s method
# Create instances of the class for each member of the...class. Be sure to store all instances in a single array.

 # def to_s
  #   puts "#{@name} is a dev who says: '#{@tagline}' "
  # end





proto = ['Jeff Winkler','John Murphy','Nessa Nguyen','Jeff Drakos','Rebecca Strong','Gardner Lonsberry' ,'Jonathan Gean','Nathaniel Tuvera','Tim Hannes','Aziz Hasanov','Chris Heuberger','Dmitry Shamis' ,'Corey Leveen','Paul Hiam','Steven Doran','Ben Karl','Kristen Tonga','Wake Lankard','Carlos Pichardo' ,'Paul Gasberra','Andrea Trapp','Adam Schneider','Heidi Williams-Foy'
]

hash = {}
split = proto.map do |n|
	n.split(' ')
end
split.each do |n|
	first = n[0]
	last = n[1]
	initials = (first[0] + last[0]).downcase.to_sym
	hash[initials]= [first, last]
end


class Developer
	attr_accessor :name, :initials, :tagline
	def initialize(initials, name)
		@name = name
		@initials = initials
		@tagline = Faker::Company.catch_phrase
	end

 
end

developers = []

hash.each do |i,n|
 
 developers << i = Developer.new(i, n)
end
get '/' do
 redirect '/developers'
end

get '/developers' do
	@developers = developers.sort{|x,y| x.initials.to_s[-1] <=> y.initials.to_s[-1]}
  erb :index
end


