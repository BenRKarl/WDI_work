# A user should be given a menu of operations
# A user should be able to choose from the menu
def menu
puts "What operation would you like to perform? You can (a)dd, (s)ubtract, (m)ultiply, (d)ivide, raise a number to a (p)ower, or q to quit."
selection = gets.chomp
while selection != "q"
puts "Please enter a first number."
first_number = gets.chomp.to_i
puts "Please enter a second number."
second_number = gets.chomp.to_i

case selection
when "a"
  sum = first_number + second_number
  puts "Your answer is #{sum}."

when "s"
  difference = first_number - second_number
  puts "Your answer is #{difference}."

when "m"
  product = first_number*second_number
  puts "Your answer is #{product}."

when "d"
  quotient = first_number/second_number
  puts "Your answer is #{quotient}."

when "p"
  presult = first_number**second_number
  puts "Your answer is #{presult}."


end

end
end
menu
response = menu

# This process should continue until the user selects a quit option from the menu
while response != 'q'
  response = menu
end

