require 'bundler'
Bundler.require

get '/' do
  index :erb
end
