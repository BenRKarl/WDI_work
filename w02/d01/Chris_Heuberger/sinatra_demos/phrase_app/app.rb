require 'sinatra'
require 'sinatra/reloader'
require 'Faker'

module Sentence

end

get '/'
  Sentence.phrase
end
