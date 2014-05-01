require "bundler/setup"
Bundler.require

get '/' do
	# if layout.erb is included in views
	# thats where HTML has to be with "<%= yield %>"
	erb :index
end

post '/names' do
	person_name = params[:user_name].gsub(" ", "%20")
	redirect "/names?being_name=" + person_name
	# another way
	# redirect "/names/?being_name=#{person_name}"
end

get '/names' do
	@name = params[:being_name]
	erb :show
end