random_animals = ["porpoise", "camel", "lobster", "kangaroo", "wombat", "chameleon"]

random_animals.each do |i|
	puts "#{i}s"
end

puts random_animals.sort

puts random_animals.sort { |x, y| y <=> x }
# another way
random_animals.sort.reverse

random_animals.map do |i| # .map returns new array versus .each returns original
	puts i.reverse
end

puts random_animals.sort_by! { |i| i.length }
# another way
# random_animals.sort { |x, y| y.length <=> x.length }

puts random_animals.sort { |x, y| x-[1] <=> y[y.length - 1] }
# random_animals.sort_by{|x| x-[1]}