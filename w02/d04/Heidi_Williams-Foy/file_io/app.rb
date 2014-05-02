require 'sinatra'
require 'sinatra/reloader'
require 'csv'

get '/' do
	"Welcome"
end

get '/links' do
	the_list = ""
	CSV.foreach('links.csv') do |line|
	the_list << "<p><a href='#{line[1]}'>#{line[0]}</a></p>"
end
	# Return the list to be shown in the browser window
	the_list
end