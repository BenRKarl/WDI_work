require "bundler/setup"
Bundler.require

get '/' do
  'test'
  erb :root
end
