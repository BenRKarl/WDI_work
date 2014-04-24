def airconditioning
  puts "What is current temperature?"
  temperature = gets.chomp.to_i
  puts "Is the A/C functional?"
  functional = gets.chomp.downcase[0]
  puts "What temperature do you want it to be?"
  desiredtemperature = gets.chomp.to_i
  if functional == "y" && temperature > desiredtemperature
    puts "Turn on the AC please"
  elsif functional == "n" && temperature > desiredtemperature
    puts "Fix the AC now, it's hot"
  elsif temperature < desiredtemperature && functional == "n"
    puts "fix whenever"
  end

end
