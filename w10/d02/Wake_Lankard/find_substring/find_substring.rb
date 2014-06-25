

require 'pry'
def find_substring(str1, str2)
  for i in (0...str1.length)
    if str1[i] == str2[0] 
      k = i
      for j in (0..str2.length-1)
        return false if str1[k] != str2[j]
        k=k+1
      end
      return true;
    end
  end
  return false
end


puts find_substring("groovy", "oo")
puts find_substring("far out", "fa")
puts find_substring("purple pie peate", "pumpkin")