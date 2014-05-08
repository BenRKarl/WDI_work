require "bundler"
Bundler.require

class Sailor
  def initialize(name)
    @name = name
  end

  def to_s
    @name
  end
end

class Submarine

def initialize(color="yellow")
  @color = color
  @sailors = []
end

def accept_sailor(sailor)
  @sailors << sailor
end

def torpedo_sailor
  @sailors.delete_at(rand(@sailors.length))
end

def to_s
  @sailors
end
end

proto = ['Jeff Winkler','John Murphy','Nessa Nguyen',
        'Jeff Drakos','Rebecca Strong','Gardner Lonsberry' ,
        'Jonathan Gean','Nathaniel Tuvera','Tim Hannes',
        'Aziz Hasanov','Chris Heuberger','Dmitry Shamis' ,
        'Corey Leveen','Paul Hiam','Steven Doran',
        'Ben Karl','Kristen Tonga','Wake Lankard',
        'Carlos Pichardo' ,'Paul Gasberra','Andrea Trapp',
        'Heidi Williams-Foy'
        ]

get "/" do
  redirect "/sailors"
end

get "/sailors" do
  @subby = Submarine.new("orange")

  proto.each do |sailor|
  new_sailor = Sailor.new(sailor)
  @subby.accept_sailor(new_sailor)
  end

  erb :index
end
