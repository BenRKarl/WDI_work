number = rand(11)
tries = 1
puts " the number: (It's #{number}.)"
guess = gets.chomp.to_i
while guess != number
  tries += 1
  if guess > number
    puts "Too high!  Guess again!"
  end
  if guess < number
    puts "Too low! Guess again!"
  end
  guess = gets.chomp.to_i
end
puts "Right in #{tries} tries! You win a bowl of monkeysoup!"
