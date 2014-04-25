
random_animals = ["porpoise", "camel", "lobster", "kangaroo", "wombat", "chameleon"]
#why no method error?
#def plural
#	puts self.each{ |animal| animal + "s" }
#end
#random_animals.plural

puts random_animals.each { |animal| animal + 's'}
puts 'DONE'

puts random_animals.sort
puts 'DONE'
puts random_animals.sort.reverse
puts 'DONE'
# random_animals.sort{|a,b| b <=> a}

puts random_animals.map{ |a| a.reverse}
puts "DONE"
# not doneputs random_animals.map{ |a| a.index.length}
random_animals.sort_by{ |x| x.length}

random_animals.sort{|x,y| x[-1] <=> y[y.length-1]}
#something like : random_animals.sort_by{|x| x-1}
#Print out a plural version of each animal on a new line(ie porpoises, #camels, etc)
#Return an array of the animals sorted alphabetically
#Return an array of the animals sorted reverse alphabetically
#Return an array of the animals with each individual string reversed
#Return an array of the animals sorted by word length (low to high)
#Return an array of the animals sorted alphabetically by the last #character in the string