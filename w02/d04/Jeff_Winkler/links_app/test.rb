
f = File.open("links.csv", "r")

array =  f.readlines
na = []

array.each do |line|
  na.push(line.split(', '))
end

ab = Hash[*na.flatten]

puts na
puts ab
nh = {}
ab.each do |key, value|
  nh[key]=value.gsub("\n","")
end
puts nh















