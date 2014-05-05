require 'bundler/setup'
Bundler.require

get '/' do
  erb :root
end

get '/links' do
  erb :links
end
