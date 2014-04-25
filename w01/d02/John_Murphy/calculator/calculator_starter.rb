# A user should be given a menu of operations
# A user should be able to choose from the menu
def menu
  puts "Hey user! Do you want to do some basic math (ie. add, subtract, multiply, or divide) or advanced (ie. x to the power of y and finding squareroots) (choose either 'basic' or 'advanced')? (enter 'q' to quit)"
  response = gets.chomp

  case response
  when "basic"
    basic_calc
  when "advanced"
    advanced_calc
  when "q"
    exit
  else
    puts "Choose 'basic' or 'advanced'"
    menu
  end
end


# A user should be able to enter numbers to perform the operation on
# A user should be shown the result
def basic_calc
  print "What do you want to do? (a)dd, (s)ubtract, (m)ultiply, or (d)ivide: "
  choice = gets.chomp
  print "What is the first number?"
  num_1 = gets.chomp.to_i
  print "What is the second number?"
  num_2 = gets.chomp.to_i
  case choice
  when 'a'
    puts "Your answer is #{num_1 + num_2}"
  when 's'
    puts num_1 - num_2
  when 'm'
    puts num_1 * num_2
  when 'd'
    puts num_1 / num_2
  else
    puts "Choose 'a', 's', 'm', or 'd' for (a)dd, (s)ubtract, (m)ultiply, or (d)ivide."
    basic_calc
  end
  menu
end

def advanced_calc
  print "(p)ower, (s)qrt, (f)actorial: "
  choice = gets.chomp
  print "What number would you like to manipulate?"
  num_1 = gets.chomp.to_i

  case choice
  when 'p'
    puts "What power would you like to raise #{choice} to?"
    power=gets.chomp.to_i
    puts num_1**power
  when 's'
    puts  num_1**0.5
  when 'f'
    factorial = 1
    while num_1 != 0
      factorial = factorial * num_1
      num_1 = num_1 - 1
    end
    puts factorial
  else
    puts "Try again!"
    advanced_calc
  end
  menu
end

menu

