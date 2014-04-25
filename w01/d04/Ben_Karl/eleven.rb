print "What's the current volume? (1 - 11): "
vol = gets.chomp.to_i

if vol >= 11
  puts "Nice, bring it up to #{vol + 1}, huh?"
  vol += 1
else
  print "Do you want to push it off a cliff? (y/n): "
  anger = gets.chomp.downcase[0]
    if vol < 11 && anger == "y"
      puts "Let's crank that sucker to eleven!"
      vol = 11
    elsif vol < 11 && anger == "n"
      puts "That's not very rock bro..."
    end
  end



