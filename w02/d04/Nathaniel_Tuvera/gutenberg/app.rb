require 'bundler/setup'
Bundler.require

get '/' do
  erb :root
end

get '/id' do
end
