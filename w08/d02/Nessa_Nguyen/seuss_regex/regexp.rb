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

def count_sam
  text.scan(/[sS]am[^-]/).length
end

def bigot_list
  lines = text.scan(/not.*\sa{1}\s\w{3,7}[.]?$/)
  nots  = lines.map do |line|
    line.split(' ').last.gsub('.', '')
  end
  nots.uniq!  
end

def matt
  new = text.gsub('Sam-I-am', 'Matt-I-Say').gsub('Sam', 'Matt').gsub('green eggs and ham', 'coconut oil and lamb')
end

def repeats
  array = text.split(/[.!?\n]/)
  array.delete('')
  new_array = []
  for i in (0..array.length).to_a
    2.times{new_array.push(array[i])} if array[i] == array[i+1] 
  end  
  new_array.compact
end














