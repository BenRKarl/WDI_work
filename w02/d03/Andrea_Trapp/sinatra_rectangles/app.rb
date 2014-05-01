require 'bundler/setup'
Bundler.require

get '/rectangle' do 
	
	@width = rand(100..300).to_s + "px"
	@height = rand(100..300).to_s + "px"
	@color = ["red","blue","green","yellow"].sample
	@rectangles = [{width: width, height: height, color: color}]
	erb :rectangle

	# redirect to "/rectangle/1"
end


get '/rectangle/:num' do

	num = params[:num].to_i

	@rectangles = num.times.map do
		# Rectangle.new
		
		width = rand(100..300).to_s + "px"
		height = rand(100..300).to_s + "px"
		color = ["red","blue","green","yellow"].sample

		#binding.pry

		{width: width, height: height, color: color}

	end

	erb :rectangle

end
