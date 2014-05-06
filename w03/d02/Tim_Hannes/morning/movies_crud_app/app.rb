require 'bundler'
Bundler.require #brings in all dependencies

get '/' do
  erb :index
end
