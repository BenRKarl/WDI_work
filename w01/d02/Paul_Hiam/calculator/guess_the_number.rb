#Paul's guess the nmbr script
 
 
  answer = rand(10)
  guess = 21

  puts "guess a number between 0 & 10, okaaay?"
 
 	while guess != answer 	
	guess = gets.chomp.to_i
	puts "guess again... losers" unless guess = answer
	end
  puts "you nailed it!"

