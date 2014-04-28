class Grandma

  def initialize
    @deaf = true
  end

  def listen(input="")
    if input == input.downcase
      puts "WHAT's THAT? COME AGAIN, SONNY!"
    elsif input == input.upcase
      puts "NO, NOT SINCE 1929!"
    else


    end
  end


def loud_enough?(input)
       ucount = 0
       slen = input.length
       for num in 1..slen do
         if input[num-1]==input[num-1].upcase
           ucount +=1
           #puts ucount
         end
       end
       if ucount > slen/2.0
        #puts "here"
         return true
       else
        return false
      end
  end


end


