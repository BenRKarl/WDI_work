print "what is the volume set at? "
current_vol = gets.chomp.to_i
print "Do you want to be awesome? "
awesome_val = gets.chomp.to_s

if current_vol >= 11 && awesome_val == 'y'
  puts "GO HIGHER... #{current_vol + 1 }!!!"
elsif current_vol <= 11 && awesome_val == 'n'
  puts "Lame... That's not very rock, man."
elsif current_vol <= 11 && awesome_val == 'y'
  puts "Crank it to eleven."
end
