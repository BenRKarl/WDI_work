require 'bundler/setup'
Bundler.require

get '/' do
  erb :root
end

get '/random' do
end

get '/id' do
end
