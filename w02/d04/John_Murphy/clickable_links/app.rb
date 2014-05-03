require 'bundler/setup'
Bundler.require

get '/' do
  erb :index
end

get '/links' do
  f = File.open('links.csv', 'r')
  lines = f.readlines
  @arr_links = lines.map {|i| i.split(" ")}.flatten.select{|i| i.include? "http"}

  erb :links
end
