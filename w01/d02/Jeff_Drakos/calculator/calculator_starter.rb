# A user should be given a menu of operations
# A user should be able to choose from the menu


def menu
  puts "Choose a calculator. (a)dvanced or (b)asic or press (q)uit"
  response = get.chomp

  case response
  when "basic"
  basic_calc
  when "advanced"
  advanced_calc
  when "q"
  exit
  else
  puts "Choose (a) or (b)"
  menu
end
end


# A user should be able to enter numbers to perform the operation on
# A user should be shown the result
def basic_calc
  print "First number?"
  num_1 = get.chomp.to_i
  print "(a)dd, (s)ubtract, (m)ultiply, (d)ivide: "
  choice = gets.chomp
  print "Second number?"
  number_two = gets.chomp.to_i
case choice
when "a"
  puts num_1 + num_2
when "s"
  puts num_1 - num_2
when "m"
  puts num_1 * num_2
when "d"
  puts num_1 / num_2
end
  menu
end


def advanced_calc
  print "(p)ower, (s)qrt: "

end

response = menu

# This process should continue until the user selects a quit option from the menu
while response != 'q'
  response = menu
end
