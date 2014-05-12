kittens = ['Misty', 'Whiskers', 'Richy', 'Foxy', 'Fluffy']
kittens.each { |p| Kitten.create(name: p) }
#takes each item of the array and stores it as p in the db

#Matts version
# Kitten.delete_all #stops your db from loading 100 NEW items every time
# 100.times do
#   width = rand(100..400)
#   height = rand(100..400)
#   url = "http://placekitten.com/#{width}/#{height}"
#   Kitten.create(width: width, height: height, url: url)
# end
