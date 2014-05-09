
# # def get_kitten
# width = rand(100..500).to_s
# height = rand(100..500).to_s
# url = "http://placekitten.com/#{width}/#{height}"
# # end

# url.each { |image| Kitten.create(name: image)}

10.times do
	width = rand(100..500).to_s
	height = rand(100..500).to_s
	url = "http://placekitten.com/#{width}/#{height}"
	@each_kitten = Kitten.create(name: url)
end