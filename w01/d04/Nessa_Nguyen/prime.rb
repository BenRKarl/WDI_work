def prime?(num)
	if num < 0
	  puts "Pick an positive integer"

	elsif num == 0 || num == 1
	  puts "#{num} is not a prime"

	else
	   i = 1;
	   divisible = []
	  while i < num 
	      divisible.push(i) if num % i == 0 	
	      i += 1 
	  end   
	  
	  if divisible.length > 2
	    puts "#{num} is not a prime"
      else  
        puts "#{num} is a prime"  
       end   
    end    	
end

prime?(694)



       
