# A user should be given a menu of operations
# A user should be able to choose from the menu
def menu
  puts "Would you like do to (b)asic math or (a)dvanced math?"
  choice = gets.chomp
  if choice == "b"
  basic_calc
  else
  advanced_calc
end

# A user should be able to enter numbers to perform the operation on
# A user should be shown the result
def basic_calc
  print "(a)dd, (s)ubtract, (m)ultiply, (d)ivide: "
  choice = gets.chomp
  case
  when choice == "a"
    puts "What would you like to add?"
    print "First number: "
    num1 = gets.chomp
    print "Ok, now the second number: "
    num2 = gets.chomp
    puts "Your maths equal #{num1 + num2}"
  when choice == "s"
    puts "What would you like to subtract?"
    print "First number: "
    num1 = gets.chomp
    print "Ok, now the second number: "
    num2 = gets.chomp
    puts "Your maths equal #{num1 - num2}"
  when choice == "m"
    puts "What would you like to multiply?"
    print "First number: "
    num1 = gets.chomp
    print "Ok, now the second number: "
    num2 = gets.chomp
    puts "Your maths equal #{num1 * num2}"
  when choice == "d"
    puts "What would you like to divide?"
    print "First number: "
    num1 = gets.chomp
    print "Ok, now the second number: "
    num2 = gets.chomp
    puts "Your maths equal #{num1 / num2}"
  end
end

def advanced_calc
  print "(p)ower, (s)qrt: "
  choice = gets.chomp
  case
  when choice == "p"
    puts "What would you like to exponentiate?"
    print "Base number: "
    num1 = gets.chomp
    print "Raised to the power of: "
    num2 = gets.chomp
    puts "Your maths equal #{num1**num2}"
  when choice == "s"
    print "What would you like to get the square root of?: "
    num1 = gets.chomp
    if num1 < 0
      puts "You can't take the square root of a negative number..."
      advanced_calc
    else
    puts "The square root of #{num1} is #{Math.sqrt(num1)}"
    end
  end
end

response = menu

# This process should continue until the user selects a quit option from the menu
while response != 'q'
  response = menu
end
