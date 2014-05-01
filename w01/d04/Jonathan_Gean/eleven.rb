def eleven
  puts "What is the amplifier volume?"
  amp_vol = gets.chomp.to_i
  puts "Do you want to push it over the cliff?"
  cliffquest = gets.chomp.downcase[0]
  if amp_vol < 11 && cliffquest == "y"
    print "Crank it to 11"
  elsif amp_vol < 11 && cliffquest == "n"
    print "That's not very rock"
  elsif amp_vol >= 11
    print "Crank it one level higher"
  else puts "Enter integer and yes or no"
  end
end
