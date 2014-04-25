random_animals = ["porpoise", "camel", "lobster", "kangaroo", "wombat", "chameleon"]

# Print out plural versions of each animal on a new line
random_animals.each {|animal| puts animal + "s"}

# Return an array of animals sorted alphabetically
random_animals.sort
random_animals.sort {|x,y| x <=> y}

# Return an array of animals sorted reverse alphabetically
random_animals.sort.reverse
random_animals.sort {|x,y| y <=> x}

# Return an array of animals with each individual string reversed
random_animals.reverse.join(", ").reverse.split(", ")  #reverse twice???
random_animals.map{|x| x.reverse}

# Return an array of animals sorted by word length (L ot H)
random_animals.sort_by{|x,y| x.length <=> y.length}
random_animals.sort_by{|x,y| y.length <=> x.length}

# Return an array of animals sorted alphabetically by the last character in string
random_animals.join(", ").reverse.split(", ")
random_animals.sort{|x,y| x[-1] <=> y[y.length-1]}
