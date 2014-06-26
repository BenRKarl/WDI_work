def find_substring(string, substring)

   # Nessa
   if string.include?(substring)
      i = 0
      while (i < string.length) do 
         return i if string.slice (i..i+substring.length-1) == substring
         i += 1
      end
   end
end

def find_substring_2(string, substring)

   # Matt
   0.upto(string.length - substring.length) do |i|
      return i if substring == string[i..i+substring.length-1]
   end
   false
end

def find_substring_3(string, substring)
   string.match(substring) ? string.match(substring).begin(0)
end
