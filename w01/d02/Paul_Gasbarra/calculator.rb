# A user should be given a menu of operations
# A user should be able to choose from the menu
def menu
  puts "Please choose to use the (c)alculator or enter (q) to quit"
  choice = gets.chomp()
  case choice
  when "c"
    basic_calc
  when "q"
    return 'q'
  else
    puts "Sorry that's not an option."
  end
end


# A user should be able to enter numbers to perform the operation on
# A user should be shown the result
def basic_calc
  print "(a)dd, (s)ubtract, (m)ultiply, (d)ivide: "
  operation = gets.chomp
  case operation
  when "a"
    add(*getnums)
  when "s"
    subtract(*getnums)
  when "m"
    multiply(*getnums)
  when "d"
    divide(*getnums)
  else
    puts "Sorry that's not a basic operation."
    basic_calc
  end
end

def getnums
  puts "Please enter first number"
  num1 = gets.to_i
  puts "Please enter  second number"
  num2 = gets.to_i
  return num1, num2
end

def add (num1, num2)
  puts  num1.to_s + " + " + num2.to_s + " = " + (num1+num2).to_s
end

def subtract(num1, num2)
  puts  num1.to_s + " - " + num2.to_s + " = " + (num1-num2).to_s
end

def multiply(num1, num2)
  puts  num1.to_s + " * " + num2.to_s + " = " + (num1*num2).to_s
end

def divide(num1, num2)
  puts  num1.to_s + " / " + num2.to_s + " = " + (num1/num2).to_s
end

def advanced_calc
  print "(p)ower, (s)qrt: "
end

response = menu

# This process should continue until the user selects a quit option from the menu
while response != 'q'
  response = menu
end
