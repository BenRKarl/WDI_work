require 'pry'

def save_as( fname, contents )
  if File.exists? fname
    print "File exists, overwrite? [y/n] "
    return if gets.chomp != "y"
  end

  f = File.open fname, "w+"
  f.write contents
  f.close
end

f = File.new "seuss.txt", "r"
text = f.read
f.close

#binding.pry


result_all_sam = text.scan(/Sam/)
result_sam_i_am = text.scan(/Sam-I-am/)
array = []

array[0] = result_all_sam
array[1] = result_sam_i_am
array[2] = result_all_sam.length
array[3] = result_sam_i_am.length
array[4] = array[2] - array[3]
#save_as("number1", array)

result = text.scan(/Sam[^-]/)
puts result.length

regex = /(?:in a\s)([a-zA-Z]*)|(?:with a\s)([a-zA-Z]*)|(?:in the\s)([a-zA-Z]*)/
result = text.scan(regex)
result.flatten!.select!{|x| x!=nil}
result.uniq!
#save_as("number2", result)

result = text.gsub("Sam-I-am", "Sammy Jam")
#save_as("sammy_jam", result)

result = text.gsub("not", "")
#save_as("affirmative", result)

result = text.gsub("Sam-I-am", "Matt-I-Say")
result = result.gsub("Sam", "Matt")
result = result.gsub("green eggs and ham", "coconut oil and lamb")
result = result.gsub(" am", " say")
save_as("matt", result)

