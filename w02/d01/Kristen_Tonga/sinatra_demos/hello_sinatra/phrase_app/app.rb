require 'sinatra'
require 'sinatra/reloader'


require "faker"

class Sentance

  def self.verb
    ['loves', 'hates', 'coddles'].sample
  end

  def self.noun
    ['baboon','soup','ship'].sample
  end

  def self.season
    ['winter','spring','autumn'].sample
  end

  def self.name
    Faker::Name.name
  end

  def self.adjective
    ['wise','confused','cunfuddled','magical'].sample

  def self.being
    ['Mr.','Mrs.','Sr.']
  end

  def self
    "#{self.name}, the #{self.adjective} #{self.being}, #{self.verb} a #{self.nown} in the #{self.season}."
end

get '/' do
  Sentance.phrase
end

end
#self verb signifies that can call independantly
