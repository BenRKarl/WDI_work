require 'bundler'
Bundler.require

require './sailor'
require './submarine'


proto = ['Jeff Winkler','John Murphy','Nessa Nguyen','Jeff Drakos','Rebecca Strong','Gardner Lonsberry' ,'Jonathan Gean','Nathaniel Tuvera','Tim Hannes','Aziz Hasanov','Chris Heuberger','Dmitry Shamis' ,'Corey Leveen','Paul Hiam','Steven Doran','Ben Karl','Kristen Tonga','Wake Lankard','Carlos Pichardo' ,'Paul Gasbarra','Andrea Trapp','Heidi Williams-Foy'
]

ssProto = Submarine.new
proto.each do |name|
  sailor = Sailor.new(name)
  ssProto.accept_sailor(sailor)
end

get '/' do
  redirect "/sailors"
end

get '/sailors' do
  @sailors = ssProto.sailors
end
