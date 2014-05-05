
# strarr = ["this is the first line",
#           "this is the second line",
#           "this is the third line"]


# puts strarr

# f =File.open("try.txt","a")
# f.write(strarr[0]+"\n")
# f.write(strarr[1]+"\n")
# f.close

f=File.open("receipts.txt", "r")
array = f.readlines
f.close

receipts = []

while !array.empty?
  receipts << array.slice!(0,4)

end

puts receipts[0][3]

