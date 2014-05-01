require 'bundler'
Bundler.require(:default)

get '/' do
	@width = rand(20) * 15 + 5 
	@height = rand(20) * 10 + 5  
	@color = ["lightblue", "yellow", "violet", "green", "pink", "blue", "lightgoldenrodyellow", "chartreuse", "limegreen", "purple", "red", "purple", "brown", "orange"].sample
	erb :rectangle
end

get '/:number' do
	@number = params[:number].to_i

	@width = rand(20) * 15 + 5 
	@height = rand(20) * 10 + 5  
	@color = ["lightblue", "yellow", "violet", "green", "pink", "blue", "lightgoldenrodyellow", "chartreuse", "limegreen", "purple", "red", "purple", "brown", "orange"].sample
	
	erb :number
end

get '/box/1' do
	@number = params[:number].to_i

	@width = rand(20) * 15 + 5 
	@height = rand(20) * 10 + 5  
	@color = ["lightblue", "yellow", "violet", "green", "pink", "blue", "lightgoldenrodyellow", "chartreuse", "limegreen", "purple", "red", "purple", "brown", "orange"].sample
	
	
	erb :whoa
end