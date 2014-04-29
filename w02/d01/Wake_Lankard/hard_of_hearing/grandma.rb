class Grandma
  attr_reader :deaf

  def initialize
    @deaf = true
  end

  def listen(input="")
    puts "WHAT's THAT? COME AGAIN, SONNY!" if input == input.downcase
    puts "NO, NOT SINCE 1929!" if input == input.upcase
  end

  def loud_enough?(input="")
    arr = input.split("")
    cap_count = 0
    arr.each { |x| cap_count += 1 if x == x.upcase }

    cap_count > input.length / 2
  end




end

