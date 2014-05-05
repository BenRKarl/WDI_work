require 'faker'
require 'sinatra'
require 'sinatra/reloader'

proto = ['Jeff Winkler','John Murphy','Nessa Nguyen','Jeff Drakos','Rebecca Strong','Gardner Lonsberry' ,'Jonathan Gean','Nathaniel Tuvera','Tim Hannes','Aziz Hasanov','Chris Heuberger','Dmitry Shamis' ,'Corey Leveen','Paul Hiam','Steven Doran','Ben Karl','Kristen Tonga','Wake Lankard','Carlos Pichardo' ,'Paul Gasberra','Andrea Trapp','Adam Schneider','Heidi Williams-Foy'
]

#THIS IS ONE OPTION, DONE BY CLASS
  proto_hash = {}

  proto_first_last = proto.map do |dev|
    dev.split(' ')
  end

  proto_first_last.each do |dev|
    first = dev[0]
    last = dev[1]
    initials = (first[0] + last[0]).downcase.to_sym
    proto_hash[initials] = [first, last]
  end

#NOW CREATE A DEVELOPER CLASS

  class Developer
    attr_accessor :initials, :name, :tagline

    def initialize(initials, name, tagline)
      @initials =   initials
      @name =       name
      @tagline =    tagline
    end

    def to_s
      returns "#{@name}, stored under the hash key, #{@initials}, is quick to say: #{@tagline}."
    end
  end

#NOW CREATE AN OBJ FOR EACH MEMBER OF THE CLASS
developers = []

proto_hash.each do |initials,name|
  tagline = Faker::Company.bs
  developers << Developer.new(initials, name, tagline)
end


#TO SELECT
developers.select{|dev| dev.initials == :pg}


#TO ADD TO A TABLE
#<tr> @initials where each [] is a new <dt>
# def table
#   developers.each do |initials, name, tagline|
#     @t_initials = puts "<dt>" initials "</dt>"
#     @t_name = puts "<dt>" name "</dt>"
#     @t_tagline = puts "<dt>" tagline "</dt>"
#   end
# end


get '/' do

  @devs = developers.sort{|x,y| x.initials.to_s <=> y.initials.to_s}
  #to sort by first name, get rid of [-1], and to sort by last add in [-1] after .to_s

  # developers.each do |initials, name, tagline|
  #   puts "<table><tr><td class='title'>INITIALS</td>"
  #   puts "<dt>" initials "</dt>"
  #   puts "</tr><tr><td class='title'>NAME</td>"
  #   puts "<td>" name "</td>"
  #   puts "</tr><tr><td class='title'>TAGLINE</td>"
  #   puts "<td>" tagline "</td>"
  #   puts "</tr></table>"
  erb :index
end
