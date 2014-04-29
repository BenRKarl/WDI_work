class Grandma


  def initialize
    @deaf = true
  end



  def listen (input="")
    if input.upcase == input
      puts "NO, NOT SINCE 1929!"
    else
      puts "WHAT's THAT? COME AGAIN, SONNY!"
    end
  end

  def loud_enough?(input)
    input_arr = input.gsub(" ","").split("")
    upcase_arr = input_arr.select{|char| char == char.upcase}
    upcase_arr.length.to_f / input_arr.length.to_f > 0.5

  end



end
