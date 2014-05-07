require 'bundler'
Bundler.require

require './submarine'
require './sailor_class'

proto = ['Jeff Winkler','John Murphy','Nessa Nguyen','Jeff Drakos','Rebecca Strong','Gardner Lonsberry' ,'Jonathan Gean','Nathaniel Tuvera','Tim Hannes','Aziz Hasanov','Chris Heuberger','Dmitry Shamis' ,'Corey Leveen','Paul Hiam','Steven Doran','Ben Karl','Kristen Tonga','Wake Lankard','Carlos Pichardo' ,'Paul Gasberra','Andrea Trapp','Heidi Williams-Foy'
]

sailors = proto.map{ |name| Sailor.new(name) }
proto_sub = Submarine.new
sailors.each{|sailor| proto_sub.accept_sailor(sailor)}
binding.pry

proto_proto_sub = Submarine.new
proto.each do |name|
  sailor = Sailor.new(name)
  proto_proto_sub.accept_sailor(sailor)
end

wake_sub = Submarine.new
proto.each{|name| proto_proto_sub.accept_sailor(Silor.new(name))}


get '/' do
  redirect '/sailors'
end

get '/sailors' do
  erb :index
end
