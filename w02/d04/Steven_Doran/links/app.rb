require 'bundler/setup'
Bundler.require

get '/' do 
  erb :root
end

get '/links' do 
  file = File.open("files/links.csv", "r")
  arr = file.readlines
  @links = arr.map { |var| var.split (', ') }

  erb :links
end