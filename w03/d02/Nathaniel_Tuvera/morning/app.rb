require './submarine'
require './sailor'
require 'pry'
require 'sinatra'
require 'sinatra/reloader'

proto = ['Jeff Winkler','John Murphy','Nessa Nguyen','Jeff Drakos','Rebecca Strong','Gardner Lonsberry' ,'Jonathan Gean','Nathaniel Tuvera','Tim Hannes','Aziz Hasanov','Chris Heuberger','Dmitry Shamis' ,'Corey Leveen','Paul Hiam','Steven Doran','Ben Karl','Kristen Tonga','Wake Lankard','Carlos Pichardo' ,'Paul Gasberra','Andrea Trapp','Heidi Williams-Foy']

@sailors = proto.map{ |name| Sailor.new(name) }
proto_sub = Submarine.new
@sailors.each{ |sailor| proto_sub.accept_sailor(sailor)}

wake_sub = Submarine.new
proto.each{|name| wake_sub.accept_sailor}


get '/' do
  redirect '/sailors'
end

get '/sailors' do
  @sailors = wake_sub.sailors
  erb :index
end
