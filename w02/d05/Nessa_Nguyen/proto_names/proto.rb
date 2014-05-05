require 'sinatra'
require 'sinatra/reloader'

require 'faker'


proto_hash = Hash.new

proto = ['Jeff Winkler','John Murphy','Nessa Nguyen',
	'Jeff Drakos','Rebecca Strong','Gardner Lonsberry' ,'Jonathan Gean','Nathaniel Tuvera','Tim Hannes','Aziz Hasanov','Chris Heuberger','Dmitry Shamis' ,'Corey Leveen','Paul Hiam','Steven Doran','Ben Karl','Kristen Tonga','Wake Lankard','Carlos Pichardo' ,'Paul Gasberra','Andrea Trapp','Adam Schneider','Heidi Williams-Foy']

first_last = proto.map do |name|
	name.split(' ')
end

first_last.map do |dev|
	first = dev.first
	last = dev.last
	initials = (first[0] + last[0]).to_sym
	proto_hash[initials] = [first, last]
end

#puts proto_hash		


class Developer
	attr_accessor :name, :initials, :tagline

#	def to_s

#		"#{name}'s, or #{initials}, catch phrase is: #{tagline}"

#	end

	def initialize(name, initials, tagline)
		@name = name
		@initials = initials
		@tagline = tagline 
	end	
end

developers = []

proto_hash.each do |initial, first_last|
	tagline = Faker::Company.catch_phrase
	developers << Developer.new(first_last, initial, tagline)
end	

puts developers


get '/' do
	redirect '/developers'
end

get '/developers' do
	@developers = developers.sort { |x,y| x.initials[-1] <=> y.initials[-1] }

	erb :show
end









