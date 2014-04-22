# A user should be given a menu of operations
# A user should be able to choose from the menu
def menu

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
    puts num_1 + num_2
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
end
basic_calc
def advanced_calc
  print "(p)ower, (s)qrt: "

end

response = menu

# This process should continue until the user selects a quit option from the menu
while response != 'q'
  response = menu
end
