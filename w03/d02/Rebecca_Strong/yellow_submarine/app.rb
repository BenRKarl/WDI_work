require './submarine'
require './sailor'
require 'pry'



proto = ['Jeff Winkler','John Murphy','Nessa Nguyen','Jeff Drakos','Rebecca Strong','Gardner Lonsberry' ,'Jonathan Gean','Nathaniel Tuvera','Tim Hannes','Aziz Hasanov','Chris Heuberger','Dmitry Shamis' ,'Corey Leveen','Paul Hiam','Steven Doran','Ben Karl','Kristen Tonga','Wake Lankard','Carlos Pichardo' ,'Paul Gasberra','Andrea Trapp','Heidi Williams-Foy']

sailors = proto.map{|name|} Sailor.new(name)}
proto_sub = Submarine.new
sailors.each{|sailor| proto_sub.accept_sailor(sailor)}

# Matt's solution
proto_proto_sub = Submarine.new
proto.each do |name|
  sailor = Sailor.new(name)
  proto_proto_sub.accept_sailor(sailor)

binding.pry
  # def crew
  #   @crew = crew('Jeff Winkler','John Murphy','Nessa Nguyen','Jeff Drakos','Rebecca Strong','Gardner Lonsberry' ,'Jonathan Gean','Nathaniel Tuvera','Tim Hannes','Aziz Hasanov','Chris Heuberger','Dmitry Shamis' ,'Corey Leveen','Paul Hiam','Steven Doran','Ben Karl','Kristen Tonga','Wake Lankard','Carlos Pichardo' ,'Paul Gasberra','Andrea Trapp','Heidi Williams-Foy')
  # end

  # def call
  #   @call = call{|key, value|}

get '/' do
  redirect '/sailors'
end

  get '/sailors' do

# @sailors = sailors.map{[|name|.index]}
# sailor = sailors.shuffle

@sailors = sailors.map do |name|
# @books = response.map do |book|
#     {'title'=>book['title'], 'author'=>book['author']}

erb :index
  end
  end
