# def find_substring(string, substring)
#   if string.include? substring
#     return string.index(substring)
#   end
#   return false
# end

# puts find_substring("groovy", "oo")
# puts find_substring("far out", "ar")
# puts find_substring("purple pie pete", "pumpkin")


# def find_substring(string, substring)  
#   return string.index(substring) if string.include? substring
#   false
# end


# def find_substring(string, substring)
#   if string.include? substring

#     i = 0
#     while (i < string.length) do
#       if string.slice(i..(i+substring.length-1)) == substring
#         return i
#       end

#       i += 1 
#     end
    
#   end
#   return false
# end


# puts find_substring("groovy", "oo")
# puts find_substring("far out", "ar")
# puts find_substring("purple pie pete", "pumpkin")



# def find_substring(string, substring)

#   0.upto(string.length - substring.length) do |i|
#     return i if substring == string[i..i+substring.length-1]
#   end
#   false

# end


# puts find_substring("groovy", "oo")
# puts find_substring("far out", "ar")
# puts find_substring("purple pie pete", "pumpkin")


# def find_substring(string, substring)
#   if string.include? substring

#     i = 0
#     while (i < string.length) do
#       if string[i..i+substring.length-1] == substring
#         return i
#       end
#       i += 1 
#     end

#   end
    
#   return false
# end


# puts find_substring("groovy", "oo")
# puts find_substring("far out", "ar")
# puts find_substring("purple pie pete", "pumpkin")



def find_substring(string, substring) 
  
  string.match(substring) ? string.match(substring).begin(0) : false
  
end


puts find_substring("groovy", "oo")
puts find_substring("far out", "ar")
puts find_substring("purple pie pete", "pumpkin")



# string =~ (/substring/)




