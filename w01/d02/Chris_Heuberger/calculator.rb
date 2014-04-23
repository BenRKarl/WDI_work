# A user should be given a menu of operations
# A user should be able to choose from the menu
def menu
  puts "Which calculator would you like to use?"
  puts "Choose one: basic or advanced?"
  calc_choice = gets.chomp
  if calc_choice == "basic"
    basic–calc
  elsif calc–choice == "advanced"
    advanced–calc
  end
end

def basic_calc
  print "(a)dd, (s)ubtract, (m)ultiply, (d)ivide: "
  operation = gets.chomp
  puts "What's your first number?"
  n1 = gets.chomp!.to_i
  puts "What's your second number?"
  n2 = gets.chomp!.to_i

  case
    when operation == "a"
      puts "You chose addition."
      add_answer = first_number + second_number
      puts add_answer
    when operation == "s"
      puts "You chose subtraction."
      sub_answer = first_number - second_number
      puts sub_answer
    when operation == "m"
      puts "You chose multiplication"
      multip_answer = first_number * second_number
      puts multip_answer
    when operation == "d"
      puts "You chose division."
      div_answer = first_number / second_number
      puts div_answer
    else
      puts "That's not a choice ding dong! Try again."
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
