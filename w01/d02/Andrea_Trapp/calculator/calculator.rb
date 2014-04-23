# A user should be given a menu of operations
# A user should be able to choose from the menu

def menu

  basic_calc
  advanced_calc

  print "type q to exit calculator or anything else to continue: "
  user_input = gets.chomp

end


# A user should be able to enter numbers to perform the operation on
# A user should be shown the result
def basic_calc
  print "(a)dd, (s)ubtract, (m)ultiply, (d)ivide: "
  operation = gets.chomp

  print "Enter 2 numbers (separated by space): "
  numbers = gets.chomp.split(" ")

  result = 0

  case operation
  when "a"  	
  	result = numbers[0].to_i + numbers[1].to_i  
  when "s"
  	result = numbers[0].to_i - numbers[1].to_i  	
  when "m"
  	result = numbers[0].to_i * numbers[1].to_i   
  when "d"
  	result = numbers[0].to_f / numbers[1].to_f  
  end

  puts "The result is #{result}." 

end



def advanced_calc
  print "(p)ower, (s)qrt: "
  operation = gets.chomp 

  result = 0

  case operation
  when "p"    
    print "Enter base number: "
    base = gets.chomp
    print "Enter exponent number: "
    exponent = gets.chomp
    result = base.to_i**exponent.to_i
  when "s"
    print "Enter number: "
    number = gets.chomp
    result = Math.sqrt(number.to_f)  
  end

  puts "The result is #{result}." 
  
end



response = menu

# This process should continue until the user selects a quit option from the menu
while response != 'q'
  response = menu
end