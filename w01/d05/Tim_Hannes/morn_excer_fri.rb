random_animals = ["porpoise", "camel", "lobster", "kangaroo", "wombat", "chameleon"]
#print out a plural version of each pluralized
random_animals.map{|animal| animals + "s"}
#Return an array of the animals sorted alphabetically
random_animals.sort!
#return array of animals sorted reverse alphabetically
random_animals.sort.reverse
#return array of animals sorted with each individual string reversed
random_animals.map{|x| x.reverse}
#return array of animals sorted by word length low to high
random_animals.sort_by{|x| x.length}
#random_animals.sort{|x,y| y.length <==> }
#return array of animals sorted alphabetically by last character in the string
random_animals.sort{|x,y| x[-1] <==> y[y.length-1]}
