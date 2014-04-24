def random_number
  user_input = nil
  x = rand(0-10)
until user_input == x
    puts "Hello, please guess a number between 0 and 10."
    user_input = gets.chomp.to_i
   if x == user_input
     puts "Congrats!" #they got it right
    elsif user_input > x
      puts "Your guess was too high."
    elsif user_input < x
      puts "Your guess was too low."
      end
  end
end

random_number
