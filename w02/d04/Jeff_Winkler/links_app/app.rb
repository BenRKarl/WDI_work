
require 'bundler/setup'
Bundler.require

get '/' do
  erb :index
end

get '/links' do

  f = File.open("links.csv", "r")

  array =  f.readlines

  f.close

  parsed = []

  array.each do |line|
    parsed.push(line.chomp.split(', '))
  end

  @link_hash = Hash[*parsed.flatten]


  erb :show

end
