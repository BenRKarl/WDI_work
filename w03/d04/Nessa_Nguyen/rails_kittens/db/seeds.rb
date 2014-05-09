Kitten.delete_all

10.times do 
	width  = rand(100..300)
	height = rand(100..300)	
	url 	 = "http://placekitten.com/#{width}/#{height}"
	Kitten.create({width: width, height: height, url: url})
end
