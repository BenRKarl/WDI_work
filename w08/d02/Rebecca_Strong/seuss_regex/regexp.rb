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

# def count_sams(text)
#   result_array = text.scan(/(?!Sam-I-am)(Sam)/)
#   puts "I am Rebecca and I counted #{result_array.length} Sams!"
# end

# count_sams(text)
