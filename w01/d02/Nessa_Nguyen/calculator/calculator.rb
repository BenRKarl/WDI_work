# A user should be given a menu of operations
# A user should be able to choose from the menu

def menu
  puts "Do you want to do (b)asic or (a)dvanced calculations? 
     (Put 'q' to quit)"
  calc = gets.chomp.downcase.to_s
  if calc == 'b' then basic_calc()
  elsif calc == 'a' then advanced_calc() 
  elsif calc == 'q' then return "q" 	
  else puts "We don't have that option. Choose again"  
  end 
end


# A user should be able to enter numbers to perform the operation on
# A user should be shown the result
def basic_calc
  print "(a)dd, (s)ubtract, (m)ultiply, (d)ivide: "
  option = gets.chomp.downcase

  case option 
  when 'a' 
    puts "First number to be added"
    a1 = gets.chomp.to_i
    puts "Second number to be added"	
    a2 = gets.chomp.to_i
    result_a = a1 + a2
    puts "The result is #{result_a}"

  when 's'
  	puts "Number to be substract from"
  	s1 = gets.chomp.to_i
  	puts "Number to substract"
  	s2 = gets.chomp_to_i
  	result_s = s1 - s2
  	puts "The result is #{result_s}"

  when 'm'
    puts "First number to multiply"
    m1 = gets.chomp.to_i
    puts "Second number to multiply"
    m2 = gets.chomp.to_i
    result_m = m1 * m2
    puts "The result is #{result_m}"	
  when 'd'
    puts "Number to be divided"
    d1 = gets.chomp.to_i
    puts "Number to divide by"
    d2 = gets.chomp.to_i
    result_d = d1 / d2
    puts "The result is #{result_d}"
    end	   	  
end

def advanced_calc
  print "(p)ower, (s)qrt"
  option = gets.chomp.to_i
  case option
  when 'p'
  	puts "Give a number"
  	num = gets.chomp.to_i
  	puts "Give a power"
  	power = gets.chomp.to_i
  	puts "Your result is #{ num**power }"
  when 's'
  	puts "Give a number"
  	num = gets.chomp.to_i
  	puts "The squareroot of #{num} is #{ Math.sqrt(num) }"	
  end
end

response = menu

# This process should continue until the user selects a quit option from the menu
while response != 'q'
  response = menu
end