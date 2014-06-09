total = 0

(0...334).each do |i|
   total += i*3 
end

(0...200).each do |i|
   total += i*5 if (i % 3 != 0) 
end

puts total