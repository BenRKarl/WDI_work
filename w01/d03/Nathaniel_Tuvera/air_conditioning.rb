print "What is the current temperature (in F)? "
currtemp = gets.chomp.to_i
print "What would you like the temperature to be (in F)? "
settemp = gets.chomp.to_i
print "Is the Airconditioning currently working? (y/n)"
status = gets.chomp.downcase[0]
if status = "y" && currtemp > settemp
  puts "Turn on the A/C, please."
elsif status = "y" && currtemp < settemp
  puts "Turn off the A/C please."
elsif status = "y" && curretemp = settemp
  puts "Do Nothing."
elsif status = "n" && currtemp <= settemp
  puts "Fix the A/C whenever you have the chance... It's cool..."
elsif status = "n" && currtemp > settemp
  puts "Fix the A/C NAOW! It's hot!"
end

#def airconditiong (currtemp, settemp, status)
#
#end
