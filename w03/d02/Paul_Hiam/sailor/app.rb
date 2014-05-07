require './sub'
require './sailor'
require 'bundler'
Bundler.require


get '/' do

proto = ['Jeff Winkler','John Murphy','Nessa Nguyen','Jeff Drakos','Rebecca Strong','Gardner Lonsberry' ,'Jonathan Gean','Nathaniel Tuvera','Tim Hannes','Aziz Hasanov','Chris Heuberger','Dmitry Shamis' ,'Corey Leveen','Paul Hiam','Steven Doran','Ben Karl','Kristen Tonga','Wake Lankard','Carlos Pichardo' ,'Paul Gasberra','Andrea Trapp','Heidi Williams-Foy'
]

@sea_devs = []
proto.each do |dev|
	dev = Sailor.new(dev)
	@sea_devs << dev
end

@the_crow= Submarine.new('black')

@sea_devs.each do |sea_dev|
@the_crow.sailors << sea_dev
end

 
  erb :index

end

#binding.pry
