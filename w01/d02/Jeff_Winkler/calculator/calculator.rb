# A user should be given a menu of operations
# A user should be able to choose from the menu
def menu
  puts "Please choose a calculator functionality.  To quit type q."
  print "(b)asic, (a)dvanced:  "
  functionality = gets.chomp
  case functionality
  when "b"
    basic_calc
  when "a"
    advanced_calc
  else
    return functionality
  end
end


# A user should be able to enter numbers to perform the operation on
# A user should be shown the result
def basic_calc
  print "(a)dd, (s)ubtract, (m)ultiply, (d)ivide: "
  user_choice = gets.chomp

  # check to see if user repsonse one of the options.  If not return their choice.
  if ["a", "s", "m", "d"].include?(user_choice)
    puts "Please enter first number:"
    first_num = gets.chomp
    puts "Please enter second number"
    second_num = gets.chomp
    case user_choice
    when "a"
      result = first_num.to_f+second_num.to_f
      puts "#{first_num} plus #{second_num} equals #{result}"
    when "s"
      result = first_num.to_f-second_num.to_f
      puts "#{first_num} minus #{second_num} equals #{result}"
    when "m"
      result = first_num.to_f*second_num.to_f
      puts "#{first_num} multiplied by #{second_num} equals #{result}"
    when "d"
      result = first_num.to_f/second_num.to_f
      puts "#{first_num} divided by #{second_num} equals #{result}"
    end
  else
    return user_choice
  end
end

def advanced_calc
  print "(p)ower, (s)qrt: "
  user_choice = gets.chomp
  # check to see if user response one of the options.  If not return their choice.
  if ["p", "s"].include?(user_choice)
    case user_choice
    when "p"
      puts "Please enter number you want raised to a power"
      first_num = gets.chomp
      puts "Please enter the power you want the first number raised to"
      second_num = gets.chomp
      result = first_num.to_f**second_num.to_f
      puts "#{first_num} to the power of #{second_num} equals #{result}"
    when "s"
      puts "Enter number you would like the square root of"
      first_num=gets.chomp
      result = first_num.to_f**0.5
      puts "The square root of #{first_num} equals #{result}"
    end
  else
    return user_choice
  end

end

response = menu

# This process should continue until the user selects a quit option from the menu
while response != 'q'
  response = menu
end
