# def find_substring(string, substring)
#   char_array = string.split("")
#   substring_char_array = substring.split("")
#   count = 0
#   true_count = 0
#   char_array.each do |letter|
#     while count <= substring_char_array.length
#       if substring_char_array[count] == letter
#         true_count += 1
#       else
#         true_count += 0
#       end
#       count += 1
#     end
#     if count = true_count
#       return true
#     else
#       return false
#     end
#   end
# end

def find_substring(string, substring)
  if string.include?(substring)
    i = 0
    while ( i < string.length ) do
      puts i if string.slice(i..i+substring.length-1) == substring
      i += 1
    end
   end

end
