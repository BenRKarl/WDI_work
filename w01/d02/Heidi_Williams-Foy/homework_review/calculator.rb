def add(a,b)
	a+b 
end

def sub(a,b)
	a-b
end

def mul(a,b)
	a*b
end

def div(a,b)
	a/b
end

def exp(a,b)
	a**b
end

def sqrt(a)
	Math.sqrt(a)
end

def menu
	puts "Please choose from the options below"
	puts "1 - Add"
	puts "2 - Subtract"
	puts "3 - Multiply"
	puts "4 - Divide"
	puts "5 - Raise number to a power"
	puts "6 - Take the square root of a number"
	puts "7 - Quit"
	print "Please enter your choice: "
end

while true

  menu 
  choice = gets.chomp

  # 
  if choice == "1"
  	print "What is the first number you want to add? "
  	num1 = gets.chomp.to_f 
  	print "What is the second number you want to add? "
  	num2 = gets.chomp.to_f
  	puts "The sum is: #{add(num1, num2)}"
  elsif choice == "2"
  	print "What is the number you want to subtract from? "
  	num1 = gets.chomp.to_f
  	print "What is the number you want to subtract? "
  	num2 = gets.chomp.to_f
  	puts "The difference is: #{sub(num1, num2)}"
  elsif choice == "3"
  	print "What is the first number you want to multiply? "
  	num1 = gets.chomp.to_f
  	print "What is the second number you want to multiply? "
    num2 = gets.chomp.to_f
    puts "The answer is: #{mul(num1, num2)}"
   elsif choice == "4"
   	print "What is the number you would like to divide? "
   	num1 = gets.chomp.to_f
   	print "What is the number you would like to divide by? "
   	num2 = gets.chomp.to_f
   	puts "The answer is: #{div(num1, num2)}"
   elsif choice == "5"
   	print "What number would you like to raise to a power? "
   	num1 = gets.chomp.to_f
   	print "To what power would you like to raise the number to? "
    num2 = gets.chomp.to_f
    puts "The answer is: #{exp(num1, num2)}"

  # if user entered 6, ask for one number to take the sqrt of
  elsif choice == "6"
  	print "What number do you want to take the square root of? "
  	number = gets.chomp.to_f
  	puts "The square root is: #{sqrt(number)}"
  elsif choice == "7"
  	puts "Thanks for calculating!"
  	break
  end
  	

end