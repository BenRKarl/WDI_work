require_relative 'apartment'
require_relative 'building'
require_relative 'person'


renter = Person.new("aziz", 25, 1000)
puts renter
builder = Building.new("1213 ave z", "modern", 5)
puts builder
flat = Apartment.new("13D", 1200, 700, 0, 1)
puts flat

main_question = puts "Would you like to continue rent an apartment?(y/n)"
main_input = gets.chomp

while main_input == "y"
	puts "main_question"
	main_input # gets.chomp
	# puts "Whatever"
end

# puts "We have an apartment building for you. Describe an apartment you'd like to rent."


# puts "Would you like to rent an apartment?"
# if gets.chomp == 


# do u wanna rent - y
# whats ur name, age, income
# 
# 
# 
# 
# 
# 
# 
# 
# 
# 
# 
# 
# 
# 
# 