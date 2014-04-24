puts "What's the current temperature?"
current_temp = gets.chomp.to_i

puts "Is the AC functional? Put 'y' or 'n'."
function = gets.chomp.downcase[0]

puts "What do you want the temperature to be?"
desired_temp = gets.chomp.to_i

  if function == 'y' && current_temp > desired_temp
  	puts "Turn on the A/C please"
  elsif function == 'n' && current_temp > desired_temp	
    puts "Fix the A/C now!"
  elsif function == 'n' && current_temp <= desired_temp 
  	puts "Fix the A/C whenever you have a chance"
  else
    puts "We're good here."
  end  	
    	  
