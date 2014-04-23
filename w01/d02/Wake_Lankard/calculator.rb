# A user should be given a menu of operations
# A user should be able to choose from the menu
def menu
  print "Do you want (b)asic caluclations or (a)dvanced calculations or to (q)uit: "
  response = gets.chomp
  if response == "b"
    basic_calc
  elsif response == "a"
    advanced_calc
  elsif response == "q"
    "q"
  else
    "Invalid response: enter \"b\", \"c\", or \"q\""
  end
end


# A user should be able to enter numbers to perform the operation on
# A user should be shown the result
def basic_calc
  print "(a)dd, (s)ubtract, (m)ultiply, (d)ivide: "
  response = gets.chomp
  print "First number :"
  first_num = gets.chomp.to_i
  print "Second number: "
  second_num = gets.chomp.to_i

  case
  when response == "a"
    answer = first_num + second_num
  when response == "s"
    answer = first num - second_num
  when response == "m"
    answer = first_num * second_num
  when response == "d"
    answer = first_num / second_num
  end

puts answer

end

def advanced_calc
  print "(p)ower, (s)qrt: "
  response = gets.chomp


  case
  when response == "p"
    print "First number :"
    first_num = gets.chomp.to_i
    print "Second number: "
    second_num = gets.chomp.to_i
    answer = first_num**second_num
  when response == "s"
    print "Number :"
    first_num = gets.chomp.to_i
    answer = Math.sqrt(first_num)
  end
puts answer
end

response = menu


# This process should continue until the user selects a quit option from the menu
while response != 'q'
  response = menu
end
