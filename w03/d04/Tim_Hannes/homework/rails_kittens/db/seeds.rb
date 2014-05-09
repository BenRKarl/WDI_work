kittens = ['Misty', 'Whiskers', 'Richy', 'Foxy', 'Fluffy']
kittens.each { |p| Kitten.create(name: p) }
#takes each item of the array and stores it as p in the db
