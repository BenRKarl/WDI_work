require 'bundler'
Bundler.require
require './submarine'



proto = ['Jeff Winkler','John Murphy','Nessa Nguyen','Jeff Drakos','Rebecca Strong','Gardner Lonsberry' ,'Jonathan Gean','Nathaniel Tuvera','Tim Hannes','Aziz Hasanov','Chris Heuberger','Dmitry Shamis' ,'Corey Leveen','Paul Hiam','Steven Doran','Ben Karl','Kristen Tonga','Wake Lankard','Carlos Pichardo' ,'Paul Gasberra','Andrea Trapp','Heidi Williams-Foy'
]

sailors = proto.map { |i| Sailor.new(i) }
proto_submarine = Submarine.new
sailors.each {|i| proto_submarine.accept_sailor(i)}


get '/' do

  redirect '/sailors'
end

get '/sailors' do
  @proto_submarine = proto_submarine
  erb :index
end
