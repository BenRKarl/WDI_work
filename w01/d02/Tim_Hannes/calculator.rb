# A user should be given a menu of operations
# A user should be able to choose from the menu
def menu
  puts "Which calculator would you like to use? Enter B for Basic or A for Advanced."
  user_input = gets.chomp
    if user_input == "b"
      basic_calc
    elsif user_input == "a"
      advanced_calc
    end
end

# A user should be able to enter numbers to perform the operation on
# A user should be shown the result

def basic_calc
  print "(a)dd, (s)ubtract, (m)ultiply, (d)ivide: "
    operation = gets.chomp
   puts "What's the first number you want?"
      n1 = gets.chomp.to_i
   puts "What's the second number you want?"
      n2 = gets.chomp.to_i

    if operation == "a"
      puts n1 + n2
    elsif operation == "s"
      puts n1 - n2
    elsif operation == "m"
      puts n1 * n2
    elsif operation == "d"
      puts n1 / n2
    end
end

def advanced_calc
  print "(p)ower, (s)qrt: "
    operation = gets.chomp
  puts "What's the first number you want?"
    n1 = gets.chomp.to_i
  puts "What's the second number you want?"
    n2 = gets.chomp.to_i

  if operation == "p"
    puts n1 ** n2
  elseif operation == "s"
    puts n1 * n1
  end
end

response = menu

# This process should continue until the user selects a quit option from the menu
while response != 'q'
  response = menu
end
