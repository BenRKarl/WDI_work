puts "How old are you?"
age = gets.chomp.to_i

if age >= 21
  puts "Cool, wanna go to happy hour later?"
elsif age < 12
  puts "No Booze for you.  Wait... shouldn't you be in school right now?"
elsif age < 21
  puts "Oh cool, wanna go to happy... wait nevermind, No booze for you."

end
