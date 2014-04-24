puts "What calculation would you like to perform? Add, substract, multiply or divide? If you would like to quit just enter 'quit'"
input = gets.chomp.downcase

puts "Type in the first number"
number1 = gets.chomp.to_i

puts "Type in the second number"
number2 = gets.chomp.to_i

case basic

when input == "add"
	puts number1 + number2 #{}"#{number1} + #{number2}"
else
	puts "I don't know that calculation"
end