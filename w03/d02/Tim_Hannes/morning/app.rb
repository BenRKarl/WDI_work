require 'sinatra'
require 'sinatra/reloader'
require './submarine'
require './sailor'
require 'pry'

get '/' do
  redirect '/sailors'
end

get '/sailors' do
  @submarine = wake_sub
  erb :index
end


proto = ['Jeff Winkler','John Murphy','Nessa Nguyen','Jeff Drakos',
  'Rebecca Strong','Gardner Lonsberry' ,'Jonathan Gean','Nathaniel Tuvera',
  'Tim Hannes','Aziz Hasanov','Chris Heuberger','Dmitry Shamis' ,
  'Corey Leveen','Paul Hiam','Steven Doran','Ben Karl','Kristen Tonga',
  'Wake Lankard','Carlos Pichardo' ,'Paul Gasberra','Andrea Trapp',
  'Heidi Williams-Foy'
]

sailors = proto.map{|name| sailor.new(name)} #takes proto and maps to a new array, with the argument of name. #new array has sailor objects from the proto array.
proto_sub = Submarine.new
sailors.each{|sailor| proto_sub.accept_sailor(sailor)}

proto_proto_sub = Submarine.new
proto.each do |name| #.each does something to the block arguments and into an array
  sailor = Sailor.new(name)
  proto_proto_sub.accept_sailor(sailor)
end

wake_sub = Submarine.new
proto.each{|name| wake_sub.accept_sailor(Sailor.new(name))}

