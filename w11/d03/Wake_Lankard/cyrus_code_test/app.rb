require_relative 'FileDump.rb'


fileDump = FileDump.new

fileNameArr = ["pipe_delimited.txt", "comma_delimited.txt", "space_delimited.txt"]
combinedRecord = fileDump.combineFiles(fileNameArr)

puts "output1"
combinedRecord.sort_by! { |h| [h[:gender], h[:l_name]] }
fileDump.printAll(combinedRecord)
puts

puts "output2"
combinedRecord.sort_by! { |h| h[:b_date] }
fileDump.printAll(combinedRecord)
puts

puts "output3"
combinedRecord.sort_by! { |h| h[:l_name] }.reverse!
fileDump.printAll(combinedRecord)
puts





