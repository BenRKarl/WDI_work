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

binding.pry

# save_as("Sam-I-am", text.scan("Sam-I-am"))
# (in a \w+)|(on a \w+)|(with a \w+)
# save_as("sammy_jam", text.gsub("Sam-I-am", "Sammy Jam"))
# save_as("affirmative", text.gsub("not eat", "eat"))

# save_as("matt", text.gsub("Sam", "Matt"))
# save_as("matt", text.gsub("Sam-I-am", "Matt-I-Say"))
# save_as("matt", text.gsub("green eggs and ham", "coconut oil and lamb"))