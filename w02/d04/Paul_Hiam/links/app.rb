require 'bundler/setup'
Bundler.require



  
  
  get '/' do
  	erb :root
  end  
  get '/links' do
  	f = File.open('links.csv', 'r')
  
  array = f.readlines.join.delete(" ").split("\n")
  
  @nest = array.map do |x|
  	x.split(',')
    end
  	erb :show
  end