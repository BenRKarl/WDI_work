# A user should be given a menu of operations
# A user should be able to choose from the menu
def menu
	puts "menu - advanced or basic calculations?"
	choice = gets.chomp
		if choice == "basic"
			response = basic_calc
		elsif choice == "advanced"
			response = advanced_calc
		elsif  choice == "q"
			response = "q"	
		end
end


# A user should be able to enter numbers to perform the operation on

# A user should be shown the result
def basic_calc
  print "(a)dd, (s)ubtract, (m)ultiply, (d)ivide? "
  op = gets.chomp.to_s
  if op == 'a'
  	puts "first num?"
  	num1 = gets.chomp.to_i
  	puts "#{num1} plus ___?"
  	num2 = gets.chomp.to_i
  	puts num1 + num2

  elsif op == 's'
  	puts "first num?"
  	num1 = gets.chomp.to_i
  	puts "#{num1} minus ___?"
  	num2 = gets.chomp.to_i
  	puts num1 - num2
  	
  	elsif op == 'm'
  	puts "first num?"
  	num1 = gets.chomp.to_i
  	puts "#{num1} times ___?"
  	num2 = gets.chomp.to_i
  	puts num1 * num2

  elsif op == 'd'
  	puts "first num?"
  	num1 = gets.chomp.to_i
  	puts "#{num1} divided by ___?"
  	num2 = gets.chomp.to_i
  	puts num1 / num2
  	
  else
  	puts "whaat?"
  end

end

def advanced_calc
  print "(p)ower, (s)qrt:"
  op = gets.chomp.to_s

end

response = menu

# This process should continue until the user selects a quit option from the menu
while response != 'q'
  response = menu
end
