class Grandma

attr_accessor :deaf

  def initialize (deaf=true)
    @deaf = deaf
  end

  def listen (sound="")
    if sound.chomp == sound.downcase
      puts "WHAT's THAT? COME AGAIN, SONNY!"
    elsif sound.chomp == sound.upcase
      puts "NO, NOT SINCE 1929!"
    end
  end

  def loud_enough? (input)
    sound_arr = input.gsub(" ","").split("")
    upcase_arr = input_arr.select{|char| char == char.upcase}
    upcase_arr.length.to_f / input_arr.length.to_f > 0.5
  end

#  def loud_enough?(input)
#    input.chars  #pingcreates arrays
#    upcase_arr =

end


#   hash_two[:key1] = hash_one.delete(:key1)
