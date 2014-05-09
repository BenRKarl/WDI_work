require 'faker'
require 'sinatra'
require 'sinatra/reloader'
require 'pry'

class Developer
  attr_accessor :first, :last, :initials, :tagline
  def initialize(first, last, tagline)
  
    @first = first
    @last = last
    @initials = first[0] + last[0]
    @tagline = tagline

  end

  def to_s 
    @initials + ": " + @first + " " + @last + ": " + @tagline

  end
end




get "/" do
  proto = ['Jeff Winkler','John Murphy','Nessa Nguyen','Jeff Drakos','Rebecca Strong','Gardner Lonsberry' ,'Jonathan Gean','Nathaniel Tuvera','Tim Hannes','Aziz Hasanov','Chris Heuberger','Dmitry Shamis' ,'Corey Leveen','Paul Hiam','Steven Doran','Ben Karl','Kristen Tonga','Wake Lankard','Carlos Pichardo' ,'Paul Gasberra','Andrea Trapp','Adam Schneider','Heidi Williams-Foy'
]

@developers = []
proto.each do |name|
  first, last = name.split(' ')
  @developers.push(Developer.new(first, last, Faker::Company.catch_phrase))
end

erb :index
end





