require 'bundler'
Bundler.require

require_relative 'models/sailor'
require_relative 'models/submarine'

get "/" do
  redirect "/sailors"
end

get "/sailors" do
	proto = ['Jeff Winkler','John Murphy','Nessa Nguyen','Jeff Drakos','Rebecca Strong','Gardner Lonsberry' ,'Jonathan Gean','Nathaniel Tuvera','Tim Hannes','Aziz Hasanov','Chris Heuberger','Dmitry Shamis' ,'Corey Leveen','Paul Hiam','Steven Doran','Ben Karl','Kristen Tonga','Wake Lankard','Carlos Pichardo' ,'Paul Gasberra','Andrea Trapp','Heidi Williams-Foy']

	@submarine = Submarine.new

	proto.each do |name|
		@sailor = Sailor.new(name)		
		@submarine.accept_sailor(@sailor)
	end

	erb :index
end