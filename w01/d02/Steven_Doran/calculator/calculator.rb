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
  	basic_calc
  end
 
  end
  	

end

def advanced_calc
  print "(p)ower, (s)qrt: "

end

response = menu

# This process should continue until the user selects a quit option from the menu
while response != 'q'
  response = menu
end