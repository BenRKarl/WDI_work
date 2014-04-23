# A user should be given a menu of operations
# A user should be able to choose from the menu?
def menu
	puts "menu - advanced or basic calculations? *(q = exit)"
	choice = gets.chomp
		case choice
		when "basic"
			response = basic_calc
		when "advanced"
			response = advanced_calc
		when "q"
			response = "q"	
		end
end


# A user should be able to enter numbers to perform the operation on

# A user should be shown the result
def basic_calc
  print "(a)dd, (s)ubtract, (m)ultiply, (d)ivide? "
  op = gets.chomp.to_s
  case op 
  when 'a'
  	puts "first num?"
  	num1 = gets.chomp.to_i
  	puts "#{num1} plus ___?"
  	num2 = gets.chomp.to_i
  	puts num1 + num2

  when 's'
  	puts "first num?"
  	num1 = gets.chomp.to_i
  	puts "#{num1} minus ___?"
  	num2 = gets.chomp.to_i
  	puts num1 - num2
  	
  when'm'
  	puts "first num?"
  	num1 = gets.chomp.to_i
  	puts "#{num1} times ___?"
  	num2 = gets.chomp.to_i
  	puts num1 * num2

  when 'd'
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
  case op 
  when'p'
  	puts "first num?"
  	num1 = gets.chomp.to_i
  	puts "#{num1} to the ___?"
  	num2 = gets.chomp.to_i
  	puts num1 ** num2

  when 's'
  	puts "SQUAWROOT'of WHAAT!?"
  	num1 = gets.chomp.to_i
  	puts Math.sqrt(num1)

  else
  	puts "whaat?"
  end
 
end

response = menu

# This process should continue until the user selects a quit option from the menu
while response != 'q'
  response = menu
end
