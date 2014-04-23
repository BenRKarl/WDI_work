def random_num
  user_input = nil
  x = rand(0..10)
  until user_input == x

  puts "Hello, please guess a number!"
  user_input = gets.chomp.to_i

    if x == user_input
      puts "Congrats!"
    elsif user_input > x
      puts "Too High, Try Again!"
    elsif user_input < x
      puts "Too Low, Try Again!"
    end
  end
end

random_num



