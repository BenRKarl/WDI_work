def volume_crank_it
puts 'what is the volume of your amp?'
currvolume = gets.chomp

if currvolume < 11 = true
  puts "do you want to push it over the cliff? answer with yes or no?"
  input = gets.chomp
  if input ==  "yes"
    puts "Crank it to eleven!"
  else puts "That's not very rock man!"
else currvolume >= 11
 puts "Crank it one level higher dude!"
end
end


  def volume_crank_it
  puts 'what is your amp volume?'
  volume = gets.chomp.to_i

  puts "do you want to take it over the cliff (y/n)"
  cliff = gets.chomp.downcase[0]

  if volume < 11 && cliff == 'y'
    puts 'crank it to 11'
  elsif volume < && cliff == 'n'
    puts 'you are a feeble rocker'
  else volume >= 11
    puts 'turn it up!'
  end
  end







