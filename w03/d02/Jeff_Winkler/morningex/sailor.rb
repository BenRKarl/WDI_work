require 'bundler/setup'
Bundler.require




get '/' do
  redirect '/sailors'
end

get '/sailors' do
  class Sailor

    attr_accessor :name
    def initialize(name)
      @name=name
    end
  end

  class Submarine

    attr_accessor :sailors
    def initialize(color="yellow")
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

  @sub = Submarine.new

  proto = ['Jeff Winkler','John Murphy','Nessa Nguyen','Jeff Drakos','Rebecca Strong','Gardner Lonsberry' ,'Jonathan Gean','Nathaniel Tuvera','Tim Hannes','Aziz Hasanov','Chris Heuberger','Dmitry Shamis' ,'Corey Leveen','Paul Hiam','Steven Doran','Ben Karl','Kristen Tonga','Wake Lankard','Carlos Pichardo' ,'Paul Gasberra','Andrea Trapp','Heidi Williams-Foy'
  ]

  proto.each do |name|
    curr_sailor = Sailor.new(name)
    @sub.accept_sailor(curr_sailor)
  end

  erb :index


end






