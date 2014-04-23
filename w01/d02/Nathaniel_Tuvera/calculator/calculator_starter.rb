# A user should be given a menu of operations
# A user should be able to choose from the menu
def menu
  puts "Choose a calculator: (a)dvanced or (b)asic"
  choice = gets.chomp.to_s
  if choice == "a"
    advanced_calc
  elsif choice == "b"
    basic_calc
  else
    puts "invalid choice, try again. *hint either a or b*"
  end
end



# A user should be able to enter numbers to perform the operation on
# A user should be shown the result


def basic_calc
  print "Enter first number: "
  x = gets.chomp.to_i
  print "Enter second number: "
  y = gets.chomp.to_i
 # puts "x = #{x}, y =#{y}"
  print "(a)dd, (s)ubtract, (m)ultiply, (d)ivide: "
  operation = gets.chomp
  if operation == "a"
    sum = x + y
    puts "#{x} + #{y} = #{sum}"
  elsif operation == "s"
    rem =  x - y
    puts "#{x} - #{y} = #{rem}"
  elsif operation == "m"
    prod = x * y
    puts "#{x} * #{y} = #{prod}"
  else operation == "d"
    quot = x / y
    puts "#{x} / #{y} = #{quot}"
  end
end

def advanced_calc
  print "(p)ower, (s)qrt: "
  operation = gets.chomp
  if operation == "p"
    print "Enter first number: "
    x = gets.chomp.to_i
    print "Enter second number: "
    y = gets.chomp.to_i
    pow = x ** y
    puts "#{x} ** #{y} = #{pow}"
  elsif operation == "s"
    print "Enter number to find sqrt of: "
    x = gets.chomp.to_i
    sqrt = Math.sqrt(x)
    puts "sqrt = #{sqrt}"
  end
end

response = menu

# This process should continue until the user selects a quit option from the menu
while response != 'q'
  response = menu
end
