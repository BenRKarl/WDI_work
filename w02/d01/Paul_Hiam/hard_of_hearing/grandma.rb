
class Grandma
	attr_accessor :deaf
	def initialize
	  @deaf = true
	end
  def listen(input = " ")
 	if input == input.downcase  
		puts "WHAT's THAT? COME AGAIN, SONNY!"
	elsif input == input.upcase
		puts "NO, NOT SINCE 1929!"
	else 
		puts "WHAT's THAT? COME AGAIN, SONNY!"
	
	end

  end

  def loud_enough?(input)
  	input_arr = input.gsub(" ","").split("")
  	up_arr = input_arr.select{|char| char == char.upcase}
  	up_arr.length.to_f / input_arr.length.to_f > 0.5
  end

end

