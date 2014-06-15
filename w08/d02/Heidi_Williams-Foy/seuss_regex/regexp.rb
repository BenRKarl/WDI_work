#require 'pry'

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

# Test 1
puts text.scan(/Sam(?!\-)/).length

# Test 2
# save_as "list", text.scan(/[Nn]ot.+(in|with) a (\w+)/).uniq.map{|e| e.join(" ")}.join("\n")

# Test 3
# save_as "sammy_jam", text.gsub(/Sam\-I\-am/, "Sammy Jam")

# Test 4
# save_as "affirmative", text.gsub(/not eat/, "eat")

# Test 5
save_as "matt", text.gsub(/green eggs and ham/, "coconut oil and lamb")
					.gsub(/Sam/, "Matt")
					.gsub(/Matt\-I\-am/, "Matt-I-Say")