require 'bundler/setup'
Bundler.require

get '/' do
  erb :root
end

get '/links' do
  @links = links
  erb :links
end

def links_arr
  f = File.open('../links.csv', 'r')
  text = f.readlines.map
  f.close
  text
end

def links
  links_arr.each {|pair| pair.split(', ')}
end

