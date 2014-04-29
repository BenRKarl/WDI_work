require "sinatra"
require "sinatra/reloader"
require "Faker"

class Sentence

  def self.ver
    ["loves", "hates", "coddles", "honors", "cherishes", "tickles"].sample
  end

  def self.noun
    ["banana", "soup", "autumn", "summer"].sample
  end

  def self.season
    ["winter", "spring", "summer", "autumn"].sample
  end

  def self.name
    Faker::Name.name
  end

  def self.adjective
    ["wise", "ordinary", "extraordinary", "lovely"].sample
  end

  def self.being
    ["cat", "kitten", "monkey", "puppy"].sample
  end

  def self.phrase
    "#{self.name} "
  end


