source = "https://www.rubygems.org"

require 'faker'
require 'sinatra'
require 'sinatra/reloader'

proto = ['Jeff Winkler','John Murphy','Nessa Nguyen','Jeff Drakos','Rebecca Strong','Gardner Lonsberry' ,'Jonathan Gean','Nathaniel Tuvera','Tim Hannes','Aziz Hasanov','Chris Heuberger','Dmitry Shamis' ,'Corey Leveen','Paul Hiam','Steven Doran','Ben Karl','Kristen Tonga','Wake Lankard','Carlos Pichardo' ,'Paul Gasberra','Andrea Trapp','Adam Schneider','Heidi Williams-Foy']

proto_hash = {}

def initialize(name, initials, tagline)
	@initials = initials
	@name = name
	@tagline = tagline
end

class Developer

end

def to_s
	"Hello! I am #{@name}. I #{@tagline}."
end 
end

post '/receipts' do

File.open('receipt.txt','w') do |f|
			f.puts params[:company], params[:product], params[:cost]
end

developers = []

proto_hash.each do |intials,name|
	tagline = Faker::Company.catch_phrase
	developers << dev Developer.new(initials, name, tagline)
end

get '/' do
	redirect '/developers'
end

get '/developers' do
	@developers = developers.sort{|x,y| x.initials.to_s[-1] <=> x.initials.to_s[-1] }
	erb :index
end


		