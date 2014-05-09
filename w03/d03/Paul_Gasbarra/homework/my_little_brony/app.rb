require 'bundler'
Bundler.require

require_relative 'models/brony'
require_relative 'models/pony'

require_relative 'config.rb'



get '/' do
  @bronies = Brony.all
  erb :index
end
