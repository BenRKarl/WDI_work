require 'sinatra'
require 'sinatra/reloader'

require 'Faker'

module Sentence

  def self.verb
    ['loves', 'hates', 'coddles', 'honors', 'cherishes', 'tickles'].sample
  end

  def self.noun
    ['banana', 'soup', 'ship', 'sail', 'map', '']
  end


  get '/' do
    Sentence.phrase
  end
