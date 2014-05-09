print "What's the volume of the amp? " 
cur_vol = gets.chomp.to_i
print "Are we going over the cliff? "
crank = gets.chomp.downcase[0]

if ["y","n"].include?(crank)

  if cur_vol < 11 && crank == "yes"
    puts "Crank it to 11."
  elsif cur_vol < 11 && crank == "no"
    puts "You are lame."
  else
    puts "Crank in one level higher."
  end

else
  puts "Invalid entry."
end



