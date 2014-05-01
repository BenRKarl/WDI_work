
require 'bundler/setup'
Bundler.require

get '/' do
  erb :index
end

get '/links' do
  f = File.open("links.csv", "r")

array =  f.readlines
na = []

array.each do |line|
  na.push(line.split(', '))
end

ab = Hash[*na.flatten]

@nh = {}
ab.each do |key, value|
  @nh[key]=value.gsub("\n","")
end


erb :show
end
