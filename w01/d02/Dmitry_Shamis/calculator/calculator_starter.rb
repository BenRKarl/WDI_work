# A user should be given a menu of operations
# A user should be able to choose from the menu
def menu
  puts "(B)asic or (A)dvanced Calculator?"
  choice = gets.chomp.downcase
  return choice
end


# A user should be able to enter numbers to perform the operation on
# A user should be shown the result
def basic_calc
  print "(a)dd, (s)ubtract, (m)ultiply, (d)ivide: "
  choice = gets.chomp
  puts "Now what numbers are you trying to deal with? One at a time, please."
  user1 = gets.chomp.to_i
  user2 = gets.chomp.to_i
  if choice == "a"
    puts "#{user1} + #{user2}"
    answer = user1 + user2
    puts answer
  elsif choice == "s"
    puts "#{user1} - #{user2}"
    answer = user1 - user2
    puts answer
  elsif choice == "m"
    puts "#{user1} * #{user2}"
    answer = user1 * user2
    puts answer
  elsif choice == "d"
    puts "#{user1} / #{user2}"
    answer = user1 / user2
    puts answer
  elsif choice == "A"
    advanced_calc
  else
    puts "Invalid choice. Please select from the menu."
  end
end

def advanced_calc
  print "(p)ower, (s)qrt: "
  choice = gets.chomp
  puts "Now what number are you trying to deal with?"
  user1 = gets.chomp.to_i
  if choice == "p"
    puts "#{user1} ** 2"
    answer = user1 ** 2
    puts answer
  elsif choice == "s"
    puts "sqrt #{user1}"
    answer = Math.sqrt(user1)
    puts answer
  elsif choice == "b"
    basic_calc
  else
    puts "Invalid choice. Please select from the menu."
  end
end

response = menu

# This process should continue until the user selects a quit option from the menu
while response != 'q'
  response = menu
  if response == "b"
  basic_calc
elsif response == "a"
  advanced_calc
else
  puts "Invalid choice. Please select from the menu."
end
end
