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


#1 - text.scan(/(Sam)[^-]/).length  === 6

#2 - can't figure this out..

#3 - sammy = text.gsub("Sam-I-am", "Sammy jam")
# save_as("sammy_jam", sammy)
# Not sure if this saved ^^^

#4 affirmative = text.gsub("not", "")
# save_as("affirmative", affirmative)


# Create a file, "list", that lists all the places and animals whom Sam refuses to eat with (the bigot).

# Create a new file, "affirmative", in which the narrator constantly agrees to eat (ie, remove the nots).
