require "bundler/setup"
Bundler.require

get '/' do
	erb :index
end

get '/links' do
	file = File.open("links.csv", "r")
	@text = file.read.split.map { |i| i.gsub(",", "") }
	file.close
	@text
	# @text = @text[6,7].join
	# this is how i was trying to read file
	# @file.readlines[0]
	# @file.each { |line| print line }
	erb :links
end