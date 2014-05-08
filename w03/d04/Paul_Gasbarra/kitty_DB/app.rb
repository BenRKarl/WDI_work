require 'bundler'
Bundler.require

require_relative 'models/kitten'

require_relative 'config.rb'

get '/'  do
  erb :index
end
