require 'bundler'
Bundler.require

get '/' do

  class Sailor
  attr_accessor :name

  def initialize(name)
    @name = name
  end
end

class Submarine
attr_accessor :color, :sailors

  def initialize(color='yellow')
    @color = color
    @sailors = []
  end

  def accept_sailor(sailor)
    @sailors << sailor
  end

  def torpedo_sailor
    @sailors.delete(@sailors.sample)
  end
end


proto = ['Jeff Winkler','John Murphy','Nessa Nguyen','Jeff Drakos','Rebecca Strong','Gardner Lonsberry' ,'Jonathan Gean','Nathaniel Tuvera','Tim Hannes','Aziz Hasanov','Chris Heuberger','Dmitry Shamis' ,'Corey Leveen','Paul Hiam','Steven Doran','Ben Karl','Kristen Tonga','Wake Lankard','Carlos Pichardo' ,'Paul Gasberra','Andrea Trapp','Heidi Williams-Foy' ]
@the_sub = Submarine.new
proto.each do |x|
  @the_sub.accept_sailor(Sailor.new(x))
end

  erb :index
end
