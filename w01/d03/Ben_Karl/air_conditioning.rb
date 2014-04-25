print "What temperature is it?: "
temp = gets.chomp.to_f
print "Ok, is the A/C working?: "
a_c = gets.chomp.downcase[0]
print "What temperature do you want it to be?: "
desire = gets.chomp.to_f

if a_c == "y" && temp > desire
  puts "Turn on the A/C please."
  elsif a_c == "n" && temp > desire
    puts "Fix the A/C now! It's hot!"
    elsif a_c == "n" && temp < desire
    puts "Fix the A/C whenever you have a chance... It's cool..."
  else
    puts "Kick back and have a beer!"
end

=begin
case temp a_c desire
when a_c == "y" && temp > desire
  puts "Turn on the A/C please."
when a_c == "n" && temp > desire
  puts "Fix the A/C now! It's hot!"
when a_c == "n" && temp < desire
  puts "Fix the A/C whenever you have a chance... It's cool..."
end
=end

