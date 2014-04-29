require 'sinatra'
require 'sinatra/reloader'

require 'Faker'

class Sentence

  def self.verb
    ["loves", "hates", "coddles", "honors"].sample
  end


  def self.noun
    ["banana", "soup", "bottle"].sample
  end

  def self.phrase
    "#{self.verb} #{self.noun}"
  end
end

get '/' do
Sentence.phrase

end
