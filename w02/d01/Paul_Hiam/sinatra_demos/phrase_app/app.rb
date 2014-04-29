require 'sinatra'
require 'sinatra_reloader'

require 'Faker'

module Sentence
  
  def self.verb
  	['loves', 'snaps up', 'approaches', 'honors', 'exposes', 'captivates', 'retorts']
  end

  def self.noun
  	['capes', 'bugs', 'seagull', 'dirt pies']
  end

  def self.name
	Faker::Name.name
  end

end


