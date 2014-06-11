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


def refused
  f = File.new "seuss.txt", "r"
  text = f.read
  f.close
  list = []
  list << text.scan(/in a (\w+)/).flatten
  list << text.scan(/with a (\w+)/).flatten
  list << text.scan(/in the (\w+)/).flatten
  list << text.scan(/on a (\w+)/).flatten
  list.flatten.uniq
end

def repeated
  f = File.new "seuss.txt", "r"
  text = f.read
  f.close
  list = []
  clean_list = []
  list << text.scan(/^(.+)$/).flatten
  list.flatten!
  list.each {|line| clean_list << line if line == list[list.index(line)+1]}
  clean_list.uniq
end

binding.pry


# Count all instances where Sam is not referred to as "Sam-I-Am." (.scan might be helpful here)
save_as('samcount', text.scan(/Sam[^-]/).count)
# Create a file, "list", that lists all the places and animals whom Sam refuses to eat with (the bigot).

save_as('list', refused)

# Create a file, "sammy_jam", in which all instances of Sam-I-Am to "Sammy Jam." (We're talking .gsub baby!)
save_as('sammy_jam', text.gsub(/Sam-I-am/, 'Sammy Jam'))

# Create a new file, "affirmative", in which the narrator constantly agrees to eat (ie, remove the nots).
save_as('affirmative', text.gsub(/not /, ''))

# Create a new file, "matt", where "Sam" is "Matt," and is referred to as "Matt-I-Say", and the narrator is being forced to eat "coconut oil and lamb". bonus
save_as('matt', text.gsub(/Sam-I-am/, 'Matt-I-Say').gsub(/Sam/, 'Matt').gsub(/green eggs and ham/, 'coconut oil and lamb'))

# List all of the sentences that are repeated twice in a row in a file "repeats". This way you can prove to the narrator that he has a problem and should see a doctor before his dimentia gets worse.
save_as('repeats', repeated)

