require 'bundler'
Bundler.require(:default)



get '/' do 
  @width = rand(100..500) 
  @height = rand(100..500) 
  @color = ['red', 'blue', 'purple', 'yellow', 'pink', 'limegreen', 
  	'chartreuse', 'green', 'black', 'lightblue', 'turquoise',
  	'orange'].sample
  erb :rectangle

  redirect to "/1"
end


get '/:num' do 
  @num = params[:num].to_i		
  @width = rand(100..200) 
  @height = rand(100..200) 
  @color = ['red', 'blue', 'purple', 'yellow', 'pink', 'limegreen', 
  	'chartreuse', 'green', 'black', 'lightblue', 'turquoise',
  	'orange'].sample
  erb :num_recs
end


get '/rectangles/:num' do 
  @rectangles = params[:num].to_i.times.map do
  	width = rand(50..100).to_s + "px"
  	height = rand(50..150).to_s + "px"
  	color = ['red', 'blue', 'purple', 'yellow', 'pink', 'limegreen', 
  			'chartreuse', 'green', 'black', 'lightblue', 'turquoise',
  			'orange'].sample	  
  	{width: width, height: height, color: color}
  end
  erb :rand_recs
end  	


