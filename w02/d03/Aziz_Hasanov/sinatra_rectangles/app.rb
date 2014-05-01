require "bundler"
Bundler.require(:default)

get '/rectangle' do
	# @rectangle
	@width = rand(200).to_s + "px"
	@height = rand(200).to_s + "px"
	@color = rand(999999).to_s
	erb :rectangle
end

get '/rectangle/:num' do
	@rectangles = params[:num].to_i.times.map do
		width = rand(200).to_s + "px"
		height = rand(200).to_s + "px"
		color = rand(999999).to_s
		{width: width, height: height, color: color}
	end
	erb :rectangle
end