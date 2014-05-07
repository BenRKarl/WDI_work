require './submarine'
require './sailor'

require 'sinatra'
require 'sinatra/reloader'

proto = ['Jeff Winkler','John Murphy','Nessa Nguyen','Jeff Drakos','Rebecca Strong','Gardner Lonsberry' ,'Jonathan Gean','Nathaniel Tuvera','Tim Hannes','Aziz Hasanov','Chris Heuberger','Dmitry Shamis' ,'Corey Leveen','Paul Hiam','Steven Doran','Ben Karl','Kristen Tonga','Wake Lankard','Carlos Pichardo' ,'Paul Gasberra','Andrea Trapp','Heidi Williams-Foy'
]


sailors = proto.map {|name| Sailor.new(name)}
sub = Submarine.new('green')
sailors.each { |name| sub.accept_sailor(name)}

get '/sailors' do
  @submarine = sub.sailors
  erb :index
end