require 'Faker'
require 'sinatra'
require 'sinatra/reloader'

proto = ['Jeff Winkler','John Murphy','Nessa Nguyen','Jeff Drakos','Rebecca Strong','Gardner Lonsberry' ,'Jonathan Gean','Nathaniel Tuvera','Tim Hannes','Aziz Hasanov','Chris Heuberger','Dmitry Shamis' ,'Corey Leveen','Paul Hiam','Steven Doran','Ben Karl','Kristen Tonga','Wake Lankard','Carlos Pichardo' ,'Paul Gasberra','Andrea Trapp','Adam Schneider','Heidi Williams-Foy']
names = {}

proto.each do |name|
	# first_name = name.split(" ")[0]
	# last_name = name.split(" ")[1].strip

	first_name, last_name = name.split(" ")

	# firstname_initial = first_name[0].downcase
	# lastname_initial = last_name[0].downcase

	# initials = (firstname_initial + lastname_initial).to_sym

	initials = (first_name[0]+last_name[0]).downcase.to_sym

	names[initials] = name
end

# puts "#{names}"

class Developer

	def initialize(initials, name)		
		@initials = initials
		@name = name
		@tagline = Faker::Company.catch_phrase
	end

	def to_s
		"Hello, I am #{@name}, my tagline is \"#{@tagline}\""
	end

end

developers = []

names.each do |initials, name|	
	# new_developer = Developer.new(initials, name)
	# developers << new_developer	
	developers << Developer.new(initials, name)
end

developers.each do |developer|
	puts developer
end 

# puts "#{developers}"

get '/developers' do

	@developers = developers

	erb :index
end






