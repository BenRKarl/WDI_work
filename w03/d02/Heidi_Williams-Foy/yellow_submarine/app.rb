require './submarine'
require './sailor'
require 'pry'
require 'sinatra'
require 'sinatra-reloader'

proto = ['Jeff Winkler','John Murphy','Nessa Nguyen','Jeff Drakos','Rebecca Strong','Gardner Lonsberry' ,'Jonathan Gean','Nathaniel Tuvera','Tim Hannes','Aziz Hasanov','Chris Heuberger','Dmitry Shamis' ,'Corey Leveen','Paul Hiam','Steven Doran','Ben Karl','Kristen Tonga','Wake Lankard','Carlos Pichardo' ,'Paul Gasberra','Andrea Trapp','Heidi Williams-Foy'
]

sailors = proto.map{|name| Sailor.new(name) }
proto_sub = Submarine.new
sailors.each{|sailor| proto.sub.accpet_sailor(sailor)}
binding.pry
 
proto_proto_sub = Submarine.new
proto.each do |name|
  sailor = Sailor.new(name)
  proto_proto_sub.accpept_sailor(sailor)
  end


  get '/sailors' do
    @submarine = wake_sub.sailors
    erb.index
  end
