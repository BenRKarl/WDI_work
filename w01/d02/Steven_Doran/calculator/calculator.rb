# A user should be given a menu of operations
# A user should be able to choose from the menu
def menu
	
end


# A user should be able to enter numbers to perform the operation on
# A user should be shown the result
def basic_calc
  print "Please select (a)dd, (s)ubtract, (m)ultiply, or (d)ivide: "
  operation = gets.chomp.downcase
  case operation
  when "a"
  	puts "You have selected addition. Please enter the first number: "
  	num1 = gets.chomp.to_f
  	puts "Please enter the second number: "
  	num2 = gets.chomp.to_f
  	ans = num1 + num2
  	puts "#{num1} plus #{num2} equals #{ans}."
  when "s"
  	puts "You have selected subtraction. Please enter the first number: "
  	num1 = gets.chomp.to_f
  	puts "Please enter the second number: "
  	num2 = gets.chomp.to_f
  	ans = num1 - num2
  	puts "#{num1} minus #{num2} equals #{ans}."
  when "m"
  	puts "You have selected multiplication. Please enter the first number: "
  	num1 = gets.chomp.to_f
  	puts "Please enter the second number: "
  	num2 = gets.chomp.to_f
  	ans = num1 * num2
  	puts "#{num1} multiplied by #{num2} equals #{ans}."
  when "d"
  	puts "You have selected division. Please enter the first number: "
  	num1 = gets.chomp.to_f
  	puts "Please enter the second number: "
  	num2 = gets.chomp.to_f
  	ans = num1 / num2
  	puts "#{num1} divided by #{num2} equals #{ans}."
  else
  	puts "Please try again."
  	basic_calc
  end
end



def advanced_calc
  print "Please select (p)ower, (s)quare root: "
  operation = gets.chomp.downcase
  case operation
  when "p"
  	puts "You have selected power. Please enter the first number: "
  	num1 = gets.chomp.to_f
  	puts "Please enter the power which you would like that to be raised: "
  	num2 = gets.chomp.to_f
  	ans = num1**num2
  	puts "#{num1} to the power of #{num2} equals #{ans}."
  when "s"
  	puts "You have selected square root. Please enter the number you would like to know the square root of: "
  	num1 = gets.chomp.to_f
  	ans = Math.sqrt(num1)
  	puts "The square root of #{num1} equals #{ans}."
  else
  	puts "Please try again."
  	advanced_calc
  end
end

response = menu

# This process should continue until the user selects a quit option from the menu
while response != 'q'
  response = menu
end