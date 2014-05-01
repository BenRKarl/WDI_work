require "bundle/setup"
Bundler.require

get '/' do
  erb :index
end
