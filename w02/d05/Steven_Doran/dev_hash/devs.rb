require "Faker"
require "sinatra"
require "sinatra/reloader"
require "pry"


class Developer

  attr_accessor :name, :initials, :catch_phrase

  def initialize (name, initials, catch_phrase)
    @name = name
    @initials = initials
    @catch_phrase = catch_phrase
  end

  def to_s
    "Hello, I am #{@name}, my initials are #{@initials}. #{@catch_phrase}"
  end
end

proto = ['Jeff Winkler','John Murphy','Nessa Nguyen','Jeff Drakos','Rebecca Strong','Gardner Lonsberry' ,'Jonathan Gean','Nathaniel Tuvera','Tim Hannes','Aziz Hasanov','Chris Heuberger','Dmitry Shamis' ,'Corey Leveen','Paul Hiam','Steven Doran','Ben Karl','Kristen Tonga','Wake Lankard','Carlos Pichardo' ,'Paul Gasberra','Andrea Trapp','Adam Schneider','Heidi Williams-Foy'
]

proto_devs = {}

proto_first_last = proto.map do |name| 
  name.split(' ')
end

proto_first_last.each do |dev|
  first = dev[0]
  last = dev[1]
  initials = (first[0] + last[0]).downcase.to_sym
  proto_devs[initials] = [first, last]
end 


developers = []

proto_devs.each do |initials, name_arr|
  name = name_arr[0] + " " + name_arr[1]
  catch_phrase = Faker::Company.catch_phrase
  developers << Developer.new(name, initials, catch_phrase)
end


# test
# developers.select { |dev| dev.initials == :pg }

get '/developers' do 
  @developers = developers.sort { |x, y| x.initials.to_s[-1] <=> y.initials.to_s[-1] }
  erb :index
end

