require 'sinatra'
require 'sinatra/reloader'

require 'faker'

class Sentence
  def self.name
  	Faker::Name.name
  end

  def self.verb
  	['loves', 'adores', 'hates'].sample
  end	

  def self.object
  	['crepes', 'ice cream', 'banana split'].sample
  end	

  def self.phrase
  	"#{self.name} #{self.verb} #{self.object}"
  end
end 


get "/" do 
  Sentence.phrase	
end