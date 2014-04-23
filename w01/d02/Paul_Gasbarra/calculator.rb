# A user should be given a menu of operations
# A user should be able to choose from the menu
def menu
  puts "Please choose to use the basic (c)alculator, the (a)dvanced_calc or enter (q) to quit"
  choice = gets.chomp()
  case choice
  when "c"
    basic_calc
  when "a"
    advanced_calc
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
    puts "addition" #these statements remind users what they're doing.
    add(*getnums)
  when "s"
    puts "subraction"
    subtract(*getnums)
  when "m"
    puts "multiplication"
    multiply(*getnums)
  when "d"
    puts "division"
    divide(*getnums)
  else
    puts "Sorry that's not a basic operation."
    basic_calc
  end
end

def advanced_calc
  print "(p)ower, (s)qrt: "
  operation = gets.chomp
  case operation
  when "p"
    power
  when "s"
    square_root
  else
    puts "Sorry that's not an advanced operation."
    advanced_calc
  end
end

def getnums
  puts "Please enter first number"
  num1 = gets.to_f
  puts "Please enter second number"
  num2 = gets.to_f
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

def power
  puts "Please enter the base"
  base = gets.to_f
  puts "Please enter the exponent"
  expo = gets.to_f
  puts base.to_s + " to the power of " + expo.to_s + " = " + (base**expo).to_s + "."
end

def square_root
  puts "Please enter the number for which you'd like the square root."
  num = gets.to_f
  square = Math.sqrt(num)
  puts "The square root of " + num.to_s + " is " + (square).to_s
end


# This calls menu method for the first time
response = menu

# This process should continue until the user selects a quit option from the menu
while response != 'q'
  response = menu
end
