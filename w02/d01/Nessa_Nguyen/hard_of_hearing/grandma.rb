class Grandma
  attr_accessor :deaf, :input
  def initialize
  	@deaf = true

  end	

  def listen(input="")
  	if input == input.downcase
  	  puts "WHAT's THAT? COME AGAIN, SONNY!"	
  	else input == input.upcase 
  	  puts "NO, NOT SINCE 1929!"	
  	end	
  end

  def loud_enough?(input="")
  	array = input.delete(" ").split("") 	  #gsub(" ", "")
  	upper = array.select { |x| x == x.upcase }
    print array
    puts "-------"
    print upper
    puts ""

  	if upper.length.to_f > array.length.to_f / 2
  	  true
  	else   	
  	  false		
  	end 
  end	

end

grandma = Grandma.new
# grandma.listen("some MORE ICECREAM")
puts grandma.loud_enough?("some SOME up UP DOWN")


  # array = input.each_char
  # array = input.chars   

	# upper.to_f / array.length.to_f > 0.5