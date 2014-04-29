require "rspec"

class Grandma

  attr_accessor :input

  def initialize
    @deaf = true
  end

  def listen(input="")
    if input.chomp == input.chomp.downcase
      puts "WHAT's THAT? COME AGAIN, SONNY!" 
    elsif input.chomp == input.chomp.upcase
      puts "NO, NOT SINCE 1929!"
    end
  end

  def loud_enough?(input)
    input_arr = input.gsub(" ", "").split("")
    upcase_arr = input_arr.select { |char| char == char.upcase}
    upcase_arr.length.to_f / input_arr.length.to_f > 0.5 
  end

end