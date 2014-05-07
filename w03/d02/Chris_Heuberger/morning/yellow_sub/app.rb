require 'bundler'
Bundler.require

require './sailor'
require './submarine'
require 'pry'

proto = ['Jeff Winkler','John Murphy','Nessa Nguyen','Jeff Drakos','Rebecca Strong','Gardner Lonsberry' ,'Jonathan Gean','Nathaniel Tuvera','Tim Hannes','Aziz Hasanov','Chris Heuberger','Dmitry Shamis' ,'Corey Leveen','Paul Hiam','Steven Doran','Ben Karl','Kristen Tonga','Wake Lankard','Carlos Pichardo' ,'Paul Gasberra','Andrea Trapp','Heidi Williams-Foy']

proto_sailors = proto.map{ |name| Sailor.new(name) }

proto_sub = Submarine.New

proto_sailors.each{ |sailor| proto_sub.accept_sailor(sailor) }

get '/sailors' do
  @submarin
  erb :index
end
