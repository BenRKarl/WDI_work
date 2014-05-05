#rite a Sinatra application
#he root directory should show a welcome message
#An `HTTP GET` request to `/links` should read all the links 
#from `links.csv` and display clickable links to all those pages

require 'bundler'
Bundler.require


get '/' do 	
	erb :index
end

post '/links' do 
end


def parse(file)
	f = File.open(file, 'r')
	text = f.readlines
	f.close
	text.map { |line| line.gsub(' ', '').gsub("\n",'') }
	# return array of lines w/ no space or new line char
end


get '/links' do 
	erb :show
end
