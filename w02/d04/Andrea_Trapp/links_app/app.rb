require 'bundler/setup'
Bundler.require

get '/' do 
	erb :root	
end

get '/links' do		
	@links = get_links("links.csv")
	erb :show
end

def get_links(links_list)	
	title_links = {}
	link_text(links_list).each do |entry|
		key = entry.split(",")[0]
		value = entry.split(",")[1].strip
		title_links[key] = value	
	end	
	title_links	
end

def link_text(links_list)	
	f = File.open(links_list, "r")	
	text = f.readlines
	f.close	
	text
end