random_animals = ["porpoise", "camel", "lobster", "kangaroo", "wombat", "chameleon"]

plurals = random_animals.map {|x| x + "s"}
alpha = random_animals.sort
reverse_alpha = random_animals.sort.reverse
reverse_string = random_animals.map {|x| x.reverse}
word_length = random_animals.sort {|x| x.length}
word_length = random_animals.sort {|x,y| x.length <=> y.length}
last_char = random_animals.sort {|x,y| x[-1] <=> y[-1]}

# with .map -> returns new array
# with .each  —> returns original array
