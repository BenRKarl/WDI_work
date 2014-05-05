require 'bundler/setup'
Bundler.require

get '/' do
  erb :main
end

get '/links' do
  link = "links here" #File.open(links.csv)
  @links = link
end
