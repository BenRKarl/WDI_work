
require 'bundler/setup'
Bundler.require

get '/' do
  na = getarr

  @out_arr = []

  na.each do |dev|
    person = []
    first, last = dev.name.split(' ')
    person << first
    person << last
    person << dev.tagline
    @out_arr << person
  end

  @out_arr.sort! {|x,y| y[1] <=> x[1]}

  #@out_arr.sort_by! {|x| x[1]}

  #@out_arr.reverse!

  #"#{out_arr}"

  #"#{na}"
  erb :index
end



class Developer
  attr_accessor :name, :inits, :tagline
  def initialize(name, inits)
    @name = name.join(' ')
    @inits = inits.to_s
    @tagline = Faker::Company.bs
  end

  def to_s
    "Inits: #{@inits}, Name: #{@name}, Tagline: #{@tagline}"
  end
end

def getarr
  proto = ['Jeff Winkler','John Murphy','Nessa Nguyen','Jeff Drakos','Rebecca Strong','Gardner Lonsberry' ,'Jonathan Gean','Nathaniel Tuvera','Tim Hannes','Aziz Hasanov','Chris Heuberger','Dmitry Shamis' ,'Corey Leveen','Paul Hiam','Steven Doran','Ben Karl','Kristen Tonga','Wake Lankard','Carlos Pichardo' ,'Paul Gasberra','Andrea Trapp','Adam Schneider','Heidi Williams-Foy'
  ]

  nh = {}
  proto.each do |x|
    a1 = x.split(' ')
    init1 = a1[0][0].downcase
    init2 = a1[1][0].downcase
    key = (init1 + init2).to_sym
    nh[key] = [a1[0], a1[1]]
  end

  #puts nh

  dev_array = []

  nh.each do |key, value|
    curr_dev = Developer.new(value, key)
    dev_array << curr_dev
  end

  dev_array
  #puts dev_array



  #person = Developer.new(["Jeff", "Winkler"], :jw)

  #puts person



  #s = 'And Jeff Winkler And'

  #a, b = s.split(' ')

  #puts a
  #puts b
  #puts Faker::Name.name
end



