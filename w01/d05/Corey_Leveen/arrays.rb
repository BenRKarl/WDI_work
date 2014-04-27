random_animals = ["porpoise", "camel", "lobster", "kangaroo", "wombat", "chameleon"]

# Print out a plural version of each animal on a new line.
  random_animals.each { |x| puts x+"s" }

# Return an array of the animals sorted alphabetically.
  random_animals.sort

# Return an array of the animals sorted in reverse alphabetically
  random_animals.sort.reverse

# Return an array of the animals with each individual string reverse.
  random_animals.map { |x| x.reverse }

# Return an array of the animals sorted by word length (low to high)
  random_animals.sort { |x,y| x.length <=> y.length }

# Return an array of the animals sorted alphabetically by the last letter in the string.
  random_animals.sort {|x,y| x[x.length-1] <=> y[y.length-1]}


