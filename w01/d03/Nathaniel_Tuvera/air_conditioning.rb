print "What is the current temperature (in F)? "
currtemp = gets.chomp.to_i
print "What would you like the temperature to be (in F)? "
settemp = gets.chomp.to_i
print "Is the Airconditioning currently working? (Y/N)"
status = gets.chomp.to_s
if status = "Y" && currtemp > settemp
  puts "Turn on the A/C, please."
elsif status = "Y" && currtemp < settemp
  puts "Turn off the A/C please."
elsif status = "Y" && curretemp = settemp
  puts "Do Nothing."
elsif status = "N" && currtemp < settemp
  puts "Fix the A/C whenever you have the chance... It's cool..."
elsif status = "N" && currtemp >= settemp
  puts "Fix the A/C NAOW! It's hot!"
end
