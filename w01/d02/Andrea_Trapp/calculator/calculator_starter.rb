# A user should be given a menu of operations
# A user should be able to choose from the menu
def menu
		puts "Choose 1 for basic calculations add, subtract, multiply or divide."
		puts "Choose 2 for advanced calculations power and sqrt."
		puts "Choose q to exit calculator."
		puts "Please enter your choice (1,2 or q):"
		user_input = gets.chomp

		if user_input == "1"
			basic_calc			
		elsif user_input == "2"
			advanced_calc
		end		

		user_input
end


# A user should be able to enter numbers to perform the operation on
# A user should be shown the result
def basic_calc
  print "(a)dd, (s)ubtract, (m)ultiply, (d)ivide: "
  user_input = gets.chomp  


  case user_input
  when "a"
  	puts "Enter 2 numbers to add (separated by space):"
  	numbers = gets.chomp.split(" ")
  	result = 0  
  	numbers.each { |number| result += number.to_i }
  	puts "The sum is #{result}."  	
  
  when "s"
  	puts "Enter 2 numbers to subtract (separated by space):"
  	numbers = get.chomp.split(" ")
	result = 0  
  	numbers.each { |number| result = number[0].to_i - number[1].to_i }
  	puts "The difference is #{result}."  

  when "m"
  	puts "Enter 2 numbers to multiply (separated by space):"
  	numbers = get.chomp.split(" ")
  	result = 0  
  	numbers.each { |number| result *= number.to_i }
  	puts "The product is #{result}." 

  when "d"
  	puts "Enter 2 numbers to divide (separated by space):"
  	numbers = get.chomp.split(" ")
  	result = 0  
  	numbers.each { |number| result = number[0].to_i / number[1].to_i }
  	puts "The result is #{result}."  	
 
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