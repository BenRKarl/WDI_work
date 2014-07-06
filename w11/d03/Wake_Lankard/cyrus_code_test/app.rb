require 'pry-byebug'
require 'date'
require_relative 'FileDump.rb'


fileDump = FileDump.new

fileNameArr = ["pipe_delimited.txt", "comma_delimited.txt", "space_delimited.txt"]
combinedRecord = []

fileNameArr.each do |file|
  contentsArr = fileDump.fileToArr(file)
  contentsArr.each do |record|
    combinedRecord << fileDump.strToHash(record)
  end
end

puts "output0"
fileDump.printAll(combinedRecord)
puts

puts "output1"
combinedRecord.sort_by! { |h| [h[:gender], h[:l_name]] }
fileDump.printAll(combinedRecord)
puts

puts "output2"
combinedRecord.sort_by! { |h| h[:b_date] }
fileDump.printAll(combinedRecord)
puts

puts "output3"
combinedRecord.sort_by! { |h| h[:l_name] }.reverse
fileDump.printAll(combinedRecord)
puts





