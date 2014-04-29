random_animals = ["porpoise", "camel", "lobster", 
				  "kangaroo", "wombat", "chameleon"]

i = 0
for i in (0..5)
  print random_animals[i] + "s " 
end

random_animals.each { |animal| print animal + "s " }

print "\n"
print random_animals.sort
print "\n"
random_animals.sort { |x, y| x <=> y }


print random_animals.sort.reverse
print "\n"
random_animals.sort { |x, y| y <=> x }

string_reverse = []
j = 0
for j in (0..5)
  string_reverse.push(random_animals[j].reverse)
end  	
print string_reverse
print "\n"

print random_animals.map { |x| x.reverse } 
print "\n"

print random_animals.sort_by { |x| x.length }
print "\n"

print random_animals.sort { |x,y| x.length <=> y.length }
print "\n"

print random_animals.sort { |x,y| x[-1] <=> y[-1] }