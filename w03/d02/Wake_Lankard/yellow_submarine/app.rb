require 'bundler'

Bundler.require

get '/sailors' do

  proto = ['Jeff Winkler','John Murphy','Nessa Nguyen','Jeff Drakos','Rebecca Strong','Gardner Lonsberry' ,'Jonathan Gean','Nathaniel Tuvera','Tim Hannes','Aziz Hasanov','Chris Heuberger','Dmitry Shamis' ,'Corey Leveen','Paul Hiam','Steven Doran','Ben Karl','Kristen Tonga','Wake Lankard','Carlos Pichardo' ,'Paul Gasberra','Andrea Trapp','Heidi Williams-Foy'
  ]

  @sub = Submarine.new

  proto.each { |name| @sub.accept_sailor(Sailor.new(name)) }
  

  erb :index
end

class Sailor

  attr_accessor :name
  def initialize(name)
    @name = name
  end

  def to_s
    "Sailor: #{name}"
      end
end

class Submarine

  attr_accessor :color, :sailors
  def initialize(color="yellow")
    @color = color
    @sailors = []

  end

  def accept_sailor(new_sailor)
    @sailors.push(new_sailor)
  end

  def torpedo_sailor(sailor)
    @sailors.shuffle!.pop
    #@sailors.delete(@sailors.sample)
  end
end