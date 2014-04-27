ruputs "I am a basic Calculator. Do you want to do some math? Please answer YES or NO."
  math_question = gets.chomp.upcase[0]

while math_question == "Y" do

  puts "Pick a number, any number!"
    integer_1=gets.chomp.to_i
    # until integer_1.class = Integer
      # puts "That's not a number! Try again."
    puts "You picked #{integer_1}"


  puts "What do you want to do with this number? You have the following options: add, subtract, multiply, divide, exponent, square root, factorial, do it all!"
    operation_1=gets.chomp.downcase

  if operation_1 == "add" || operation_1 == "+"
    puts "#{integer_1} plus what other number?"
      integer_2=gets.chomp.to_i
      # "{integer_1} + #{integer_2} = #{integer_2 + integer_1}"
      answer = integer_1 + integer_2
      puts "#{integer_1} + #{integer_2} = #{answer}"

  elsif operation_1 == "subtract" || operation_1 == "-"
    puts "#{integer_1} minus what other number?"
      integer_2=gets.chomp.to_i
      answer = integer_1 - integer_2
      puts "#{integer_1} - #{integer_2} = #{answer}"

  elsif operation_1 == "multiply" || operation_1 == "*"
    puts "#{integer_1} multiplied by what other number?"
      integer_2=gets.chomp.to_i
      answer = integer_1 * integer_2
      puts "#{integer_1} * #{integer_2} = #{answer}"

  elsif operation_1 == "divide" || operation_1 == "/"
    puts "#{integer_1} divided by what other number?"
      integer_2=gets.chomp.to_i
      answer = integer_1 / integer_2
      puts "#{integer_1} / #{integer_2} = #{answer}"
      puts "Do you want to know the remainder? Please answer YES or NO."
        remainder_decision=gets.chomp.upcase[0]
        if remainder_decision == "Y"
            remainder = integer_1 % integer_2
            puts "#{integer_1} divided by #{integer_2} is #{answer} with a remainder of #{remainder}!"
        else
            puts "Well alrighty then!"
        end

  elsif operation_1 == "exponent" || operation_1 == "**"
    puts "#{integer_1} to what power?"
      integer_2=gets.chomp.to_i
      answer = integer_1 ** integer_2
      puts "#{integer_1} to the power of #{integer_2} = #{answer}"

  elsif operation_1 == "square root" || operation_1 == "sqrt"
    answer = Math.sqrt(integer_1)
    puts "The square root of #{integer_1} is #{answer}"

  elsif operation_1 == "factorial"
    answer = integer_1.downto(1).reduce(:*)
    # answer = integer_1.downto(1) { |n| total *= n }
    puts "The factorial of #{integer_1} is #{answer}"

  elsif operation_1 == "do it all" || operation_1 == "all"
    puts "Pick a second number! Any number!"
      integer_2=gets.chomp.to_i
      #The variable table!
        sum = integer_1 + integer_2
        subtraction = integer_1 - integer_2
        multiplication = integer_1 * integer_2
        division = integer_1 / integer_2
        remainder = integer_1 % integer_2
        to_the_power = integer_1 ** integer_2
        square_root = Math.sqrt(integer_1)
        square_root2 = Math.sqrt(integer_2)
        factorial = integer_1.downto(1).reduce(:*)
        factorial2 = integer_2.downto(1).reduce(:*)

      puts "Calculating! Calculating!"
      puts "#{integer_1} + #{integer_2} = #{sum}"
      puts "#{integer_1} - #{integer_2} = #{subtraction}"
      puts "#{integer_1} * #{integer_2} = #{multiplication}"
      puts "#{integer_1} / #{integer_2} = #{division} with a remainder of #{remainder}"
      puts "#{integer_1} to the power of #{integer_2} = #{to_the_power}"
      puts "The square root of #{integer_1} = #{square_root}"
      puts "And the square root of #{integer_2} = #{square_root2}"
      puts "The factorial of #{integer_1} = #{factorial}"
      puts "And the factorial of #{integer_2} = #{factorial2}"

  else
    puts "Sorry. I didn't catch that... Try again! Please pick one of the provided options. That's all I can do!"
  end

  puts "Would you like to do more math? YES or NO?"
    math_question = gets.chomp.upcase[0]

end
