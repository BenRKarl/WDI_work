def volume_amp
  puts "What is the volume of your amplifier?"
  vol = gets.chomp.to_i
  
   
puts "Do you want to take it over the cliff? (y/n)"
    push = gets.chomp.downcase[0]

  if vol >= 11 && push == 'n'
    puts "Rock steady"  
  elsif vol >= 11 && push == 'y'  
    puts "Crank it 1 level higher"
  
  elsif vol < 11 && push == 'y'
      puts "Crank it to eleven!"
  else vol < 11 && push == 'n' 
        puts "That's not very rock 'n' roll man"	
  end
end   	  

volume_amp