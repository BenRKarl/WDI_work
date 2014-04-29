require 'sinatra'
require 'sinatra/reloader'


get '/' do 
	@text = "Do you have a test for that?"
	@yes = "http://localhost:4567/pass"
	@no = "http://localhost:4567/write_test"
	# @yes = "pass"	
	# @no = "write_test"
	erb :question
end

get '/pass' do 
	@text = "Does the test pass?"
	@yes = "http://localhost:4567/refactor"
	@no = "http://localhost:4567/write_code"
	erb :question
end

get '/refactor' do 
	@text = "Need to refactor?"
	@yes = "http://localhost:4567/do_refactor"
	@no = "http://localhost:4567/new_feature"
	erb :question
end

get '/do_refactor' do 
	@text = "Refactor the code."
	@done = "http://localhost:4567/pass"	
	erb :done
end

get '/new_feature' do 
	@text = "Select a new feature to implement."
	@done = "http://localhost:4567/pass"	
	erb :done
end

get '/write_code' do 
	@text = "Write just enough code for the test to pass."
	@done = "http://localhost:4567/pass"	
	erb :done
end

get '/write_test' do 
	@text = "Write a test."
	@done = "http://localhost:4567/pass"	
	erb :done
end

