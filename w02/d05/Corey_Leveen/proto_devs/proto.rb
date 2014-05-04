

require 'bundler/setup'
Bundler.require


get '/' do

proto = ['Jeff Winkler','John Murphy','Nessa Nguyen','Jeff Drakos','Rebecca Strong','Gardner Lonsberry' ,'Jonathan Gean','Nathaniel Tuvera','Tim Hannes','Aziz Hasanov','Chris Heuberger','Dmitry Shamis' ,'Corey Leveen','Paul Hiam','Steven Doran','Ben Karl','Kristen Tonga','Wake Lankard','Carlos Pichardo' ,'Paul Gasberra','Andrea Trapp','Adam Schneider','Heidi Williams-Foy'
]
@proto_hash = {}

  proto_first_last = proto.map do |x|
     x.split(' ')
  end

  proto_first_last.each do |dev|
    first = dev[0]
    last = dev[1]
    initials = (first[0] + last[0]).downcase.to_sym
    @proto_hash[initials] = [first, last]
  end

  class Developer

    def initialize(name, initials, tagline)
      @name = name
      @initials = initials
      @tagline = tagline
    end
    def to_s
      "Hello I am #{@name}, my initials are #{@initials}, and #{@tagline}."
    end
  end
@developer_array = []
  @proto_hash.each do |key, value|
    @developer_array << Developer.new(value[0]+" "+value[1], key, Faker::Company.catch_phrase)
  end
erb :index
end
