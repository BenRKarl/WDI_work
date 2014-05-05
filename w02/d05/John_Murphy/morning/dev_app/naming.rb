
require 'faker'

proto = ['Jeff Winkler','John Murphy','Nessa Nguyen','Jeff Drakos','Rebecca Strong','Gardner Lonsberry' ,'Jonathan Gean','Nathaniel Tuvera','Tim Hannes','Aziz Hasanov','Chris Heuberger','Dmitry Shamis' ,'Corey Leveen','Paul Hiam','Steven Doran','Ben Karl','Kristen Tonga','Wake Lankard','Carlos Pichardo' ,'Paul Gasberra','Andrea Trapp','Adam Schneider','Heidi Williams-Foy']


class Developer

  attr_reader :initials, :name, :tagline

  def initialize(initials, name)
    @name = name
    @initials = initials
    @tagline = Faker::Company.catch_phrase
  end

  def to_s
    "I am #{@name}, my initials are #{@initials}, and my tagline is #{@tagline}."
  end

end

def define
names = {}
proto = ['Jeff Winkler','John Murphy','Nessa Nguyen','Jeff Drakos','Rebecca Strong','Gardner Lonsberry' ,'Jonathan Gean','Nathaniel Tuvera','Tim Hannes','Aziz Hasanov','Chris Heuberger','Dmitry Shamis' ,'Corey Leveen','Paul Hiam','Steven Doran','Ben Karl','Kristen Tonga','Wake Lankard','Carlos Pichardo' ,'Paul Gasberra','Andrea Trapp','Adam Schneider','Heidi Williams-Foy']

initials = []

proto.each do |i|
  inits=""
  i.split(" ").each do |i|
    inits << i[0].downcase
  end
 initials << inits.to_sym
end

initials.each do |i|
  names[i] = proto[initials.index(i)].split(" ")
end

developers = []

names.each do |inits, name|
  developers << Developer.new(inits, name)
end

@developers = developers

@sorted = @developers.sort {|x,y| x.name[1][0] <=> y.name[1][0]}


  @sorted
end

