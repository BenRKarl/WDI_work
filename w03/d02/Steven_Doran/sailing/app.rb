require './models/submarine'
require './models/sailor'
require 'pry'
require 'sinatra'
require 'sinatra/reloader'

proto = ['Jeff Winkler','John Murphy','Nessa Nguyen','Jeff Drakos','Rebecca Strong','Gardner Lonsberry' ,'Jonathan Gean','Nathaniel Tuvera','Tim Hannes','Aziz Hasanov','Chris Heuberger','Dmitry Shamis' ,'Corey Leveen','Paul Hiam','Steven Doran','Ben Karl','Kristen Tonga','Wake Lankard','Carlos Pichardo' ,'Paul Gasberra','Andrea Trapp','Heidi Williams-Foy'
]

proto_sub = Submarine.new

proto.each do |name|
  sailor = Sailor.new(name)
  proto_sub.accept_sailor(sailor)
end

get '/' do
  redirect '/sailors'
end

get '/sailors' do 
  @sailors = proto_sub.sailors
  erb :index
end






