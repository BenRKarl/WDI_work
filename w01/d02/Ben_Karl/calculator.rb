# A user should be given a menu of operations
# A user should be able to choose from the menu
def menu

  #commenting out since menu should be part of commit 3
=begin
  puts "Would you like do to (b)asic math or (a)dvanced math?"
  choice = gets.chomp
  if choice == "b"
  #run the basic_calc method with new variables
  else
  #run the advanced cal method with new variables
=end

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
    num1 = gets.chomp.to_i
    print "Ok, now the second number: "
    num2 = gets.chomp.to_i
    puts "Your maths equal #{num1 + num2}"
  when choice == "s"
    puts "What would you like to subtract?"
    print "First number: "
    num1 = gets.chomp.to_i
    print "Ok, now the second number: "
    num2 = gets.chomp.to_i
    puts "Your maths equal #{num1 - num2}"
  when choice == "m"
    puts "What would you like to multiply?"
    print "First number: "
    num1 = gets.chomp.to_i
    print "Ok, now the second number: "
    num2 = gets.chomp.to_i
    puts "Your maths equal #{num1 * num2}"
  when choice == "d"
    puts "What would you like to divide?"
    print "First number: "
    num1 = gets.chomp.to_i
    print "Ok, now the second number: "
    num2 = gets.chomp.to_i
    puts "Your maths equal #{num1 / num2}"
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
