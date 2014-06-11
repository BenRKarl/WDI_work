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

save_as("sam_count.txt", text.scan(/(?!Sam-I-am)(Sam)/).count())

save_as("list.txt", text.scan(/(?:a{1})\s(\w+)/).uniq)
save_as("list2.txt", text.scan(/(Not)\s\S{2,4}\s(the|a)\s[a-z]+\W/).uniq)

save_as("sammy_jam.txt", text.gsub(/(Sam-I-am)/, "Sammy Jam"))

save_as("affirmative.txt", text.gsub(/[Nn]ot/, ""))

save_as("matt.txt", text.gsub(/(Sam)/, "Matt").gsub(/(green eggs and ham)/, "coconut oil and lamb”))