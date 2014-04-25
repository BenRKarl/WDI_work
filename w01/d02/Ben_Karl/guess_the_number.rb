#Ben Karl Homework: Week 1, Day 2, Part 2

attempts = 1
comp_choice = 1 + rand(10)
puts "Pick a number between 1 and 10..."
guess = gets.chomp.to_i
while guess != comp_choice

  if guess > comp_choice
    puts "Sorry, your guess is too high"
  elsif guess < comp_choice
    puts "Sorry, your guess is too low"
  els
    puts "Is that even a number? Try again."
  end

  guess = gets.chomp.to_i
  attempts += 1
end
puts "Yay! You guessed right! And it only took you #{attempts} tries"




