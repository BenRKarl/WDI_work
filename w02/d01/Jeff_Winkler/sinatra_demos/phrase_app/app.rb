
require 'sinatra'
require 'sinatra/reloader'

require 'Faker'

module Sentence
  def self.verb
    ['loves'].sample
  end
end

get '/' do
  Sentence.verb[rand(4)]
end



