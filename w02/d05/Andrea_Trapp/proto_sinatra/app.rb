require 'bundler/setup'
Bundler.require


get '/' do
	# @devs = get_developers
	# @devs = get_developers.sort{ |x,y| x.initials.to_s[-1] <=> y.initials.to_s[-1]} #sorts a-z by last initial letter
	@devs = get_developers.sort{ |x,y| x.name.split(' ')[1].to_s <=> y.name.split(' ')[1]} #sorts a-z by last name
	erb :root
end


class Developer
	attr_accessor :initials, :name

	def initialize(initials, name)		
		@initials = initials
		@name = name
		@tagline = "this is your personal tagline" #Faker::Company.catch_phrase
	end

	def to_s
		"Hello, I am #{@name}, my tagline is \"#{@tagline}\""
	end
end

def get_developers
	proto = ['Jeff Winkler','John Murphy','Nessa Nguyen','Jeff Drakos','Rebecca Strong','Gardner Lonsberry' ,'Jonathan Gean','Nathaniel Tuvera','Tim Hannes','Aziz Hasanov','Chris Heuberger','Dmitry Shamis' ,'Corey Leveen','Paul Hiam','Steven Doran','Ben Karl','Kristen Tonga','Wake Lankard','Carlos Pichardo' ,'Paul Gasberra','Andrea Trapp','Adam Schneider','Heidi Williams-Foy']
	names = {}

	proto.each do |name|
		first_name, last_name = name.split(" ")
		initials = (first_name[0]+last_name[0]).downcase.to_sym
		names[initials] = name
	end

	developers = []

	names.each do |initials, name|		
		developers << Developer.new(initials, name)
	end

	developers
end



