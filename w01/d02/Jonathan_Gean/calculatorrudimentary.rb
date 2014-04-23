# A user should be given a menu of operations
# A user should be able to choose from the menu
def menu



end


# A user should be able to enter numbers to perform the operation on
# A user should be shown the result
def basic_calc
  puts "(a)dd, (s)ubtract, (m)ultiply, (d)ivide: enter a, s, m, or d; quit to quit"
  basic_functions = gets.chomp
  while basic_functions != "quit"
    if basic_functions == "a"
        puts "Enter first number"
        add1_int = gets.chomp
        puts "Enter second number"
        add2_int = gets.chomp
        puts "Equals"
        puts add1_int + add2_int
        puts "(a)dd, (s)ubtract, (m)ultiply, (d)ivide: enter a, s, m, or d; quit to quit"
        puts basic_functions = gets.chomp
        end
    if basic_functions == "s"
        puts "Enter first integer"
        sub1_int = gets.chomp.to_i
        puts "Enter second integer"
        sub2_int = gets.chomp.to_i
        puts "Equals"
        puts sub1_int - sub2_int
        puts "(a)dd, (s)ubtract, (m)ultiply, (d)ivide: enter a, s, m, or d; quit to quit"
        puts basic_functions = gets.chomp
        end
    if basic_functions == "m"
        puts "Enter first integer"
        mult1_int = gets.chomp.to_i
        puts "Enter second integer"
        mult2_int = gets.chomp.to_i
        puts "Equals"
        puts mult1_int * mult2_int
        puts "(a)dd, (s)ubtract, (m)ultiply, (d)ivide: enter a, s, m, or d; quit to quit"
        puts basic_functions = gets.chomp

        end
    if basic_functions == "d"
        puts "Enter first integer"
        div1_int = gets.chomp.to_i
        puts "Enter second integer"
        div2_int = gets.chomp.to_i
        puts "Equals"
        puts div1_int / div2_int
        puts "(a)dd, (s)ubtract, (m)ultiply, (d)ivide: enter a, s, m, or d; quit to quit"
        puts basic_functions = gets.chomp

        end
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
