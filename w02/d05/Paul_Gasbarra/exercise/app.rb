
require 'bundler/setup'
Bundler.require


proto = ['Jeff Winkler','John Murphy','Nessa Nguyen','Jeff Drakos','Rebecca Strong','Gardner Lonsberry' ,'Jonathan Gean','Nathaniel Tuvera','Tim Hannes','Aziz Hasanov','Chris Heuberger','Dmitry Shamis' ,'Corey Leveen','Paul Hiam','Steven Doran','Ben Karl','Kristen Tonga','Wake Lankard','Carlos Pichardo' ,'Paul Gasberra','Andrea Trapp','Adam Schneider','Heidi Williams-Foy']

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

class Developer
  attr_reader :name, :initialize, :tagline
  def initialize (name, initials, tagline)
    @name = name
    @initials = initials
    @tagline = tagline
  end

  def to_s
    "My name is #{name}. Initials: #{initials}. My motto is '#{tagline}.'"
  end
end

class_array = []

proto_first_last.each do |dev|
  first = dev[0]
  last = dev[1]
  initials = (first[0] + last[0]).downcase.to_sym
  proto_hash[initials] = [first, last]
end

get '/' do
  @developers = proto_hash
  erb :index
end
