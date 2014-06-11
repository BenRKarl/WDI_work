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

# samcount = text.scan(/Sam[^-]/).count
# save_as('samcount.txt', samcount)

# I do not like them( .*)$
  
# samjammy = puts text.gsub(/Sam-I-Am/, "Sam Jammy")

 # samjammy = text.gsub("Sam-I-am", "Sam Jammy")

 # \bSam(?!-)

 # mattsub = text.gsub(/\bSam(?!-)/, "Matt")
# save_as("matt.txt", mattsub)


# dementia = text.gsub(/^(.*)(\r?\n\1)+$/, "")
# save_as("dementia.txt", dementia)
