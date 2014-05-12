require 'faker'
require 'sinatra'
require 'sinatra/reloader'
# not using gemfile so reads as require 'sinatra/reloader'


proto = ['Jeff Winkler','John Murphy','Nessa Nguyen','Jeff Drakos','Rebecca Strong','Gardner Lonsberry' ,'Jonathan Gean','Nathaniel Tuvera','Tim Hannes','Aziz Hasanov','Chris Heuberger','Dmitry Shamis' ,'Corey Leveen','Paul Hiam','Steven Doran','Ben Karl','Kristen Tonga','Wake Lankard','Carlos Pichardo' ,'Paul Gasberra','Andrea Trapp','Adam Schneider','Heidi Williams-Foy']
end

class Developer

attr_reader :initials, :name, :tagline
def intialize(initials, name, tagline)
@name=name
@intials=intials
@tagline=tagline
end

def to_s
  "Hello! Iam #{@name}. I #{@tagline}."
end
end
developers =[]dev

proto_hash.each do |initials,name|
tagline = Faker::Company.catch_phrase
developers <<Developer.new(initials, name, tagline)
end

# to test in pry type developers.select{|dev| dev.initials == :pg}

get '/' do
redirect '/developers'
#will make /developers the default so the browser automatically brings you to the '/developers' below
end

get '/developers' do
@developers = developers.sort{|x,y|} x.initials.to_s[-1] <=> y.initials.to_s[-1]  }
puts Developer.new [table]
# above should render an index of all developers


end
