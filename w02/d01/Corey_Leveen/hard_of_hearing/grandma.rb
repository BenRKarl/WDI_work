class Grandma
  attr_accessor :deaf

  def initialize()
    @deaf = true
  end

  def listen(input="")
    if input.downcase == input
      puts "WHAT's THAT? COME AGAIN, SONNY!"
    elsif input.upcase == input
      puts "NO, NOT SINCE 1929!"
    else
      puts "WHAT's THAT? COME AGAIN, SONNY!"
    end
  end

  def loud_enough(input)
    lower_count = 0
    upper_count = 0
    input.each { |x|
      if x.downcase == x
        lower_count += 1
      else
        upper_count += 1
      end
    }
    puts "Lower count is #{lower_count}"
    puts "Upper count is #{upper_count}"
    if lower_count > upper_count
      false
    else
      true
    end
  end

end
