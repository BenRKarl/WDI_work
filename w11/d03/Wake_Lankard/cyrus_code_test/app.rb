require 'pry-byebug'
require 'date'
class Parser

  def initialize
    pipeMap    = {  :l_name    => 0,
                    :f_name    => 1,
                    :mid_init  => 2,
                    :gender    => 3,
                    :fav_color => 4,
                    :b_date    => 5
                  }
    commaMap   = {  :l_name    => 0,
                    :f_name    => 1,
                    :gender    => 2,
                    :fav_color => 3,
                    :b_date    => 4
                  }
    spaceMap   = {  :l_name    => 0,
                    :f_name    => 1,
                    :mid_init  => 2,
                    :gender    => 3,
                    :fav_color => 5,
                    :b_date    => 4

                  }

    @masterMap =  { "|"        => pipeMap,
                    ","        => commaMap,
                    " "        => spaceMap
                  }   
    @dateDelimiters = [ "/", "-" ]

  end  

  def parseFile(filename)
    resultsArr = []
    file_contents = File.open(filename).read()
    resultsArr = file_contents.split("\n")
  end

  def identifyDelimiter(data,delimiterArr)
    delimiterArr.each do |d|
      return d if data.include? d
    end
    return " "
  end

  def strToHash(str)
    resultHash = {}
    arr = []
    delimiter = identifyDelimiter(str, @masterMap.keys)
    arr = str.split(delimiter).each { |x| x.strip! }
    map = @masterMap[delimiter]

    map.each { |k,v| resultHash[k] = arr[v] }

    resultHash[:gender] = processGender(resultHash[:gender])
    resultHash[:b_date] = processDate(resultHash[:b_date])

    resultHash
  end

  def processGender(str)
    str.downcase!
    return "male" if str == "m"
    return "female" if str == "f"
    return str
  end

  def processDate(str)
    date = Date.new
    delimiter = identifyDelimiter(str, @dateDelimiters)
    dateArr = str.split(delimiter)
    return Date.new(dateArr[2].to_i, dateArr[0].to_i, dateArr[1].to_i)
  end

  def printRecord(record)
    record.each do |line|
      print line[:l_name] + " "
      print line[:f_name] + " "
      print line[:gender] + " "
      print line[:b_date].to_s + " "
      print line[:fav_color] + " "
      puts
    end
  end






end

# parser = Parser.new

# fileArr = ["pipe_delimited.txt", "comma_delimited.txt", "space_delimited.txt"]
# singleRecord = []

# fileArr.each do |file|
#   contentsArr = parser.parseFile(file)
#   contentsArr.each do |line|
#     singleRecord << parser.strToHash(line)
#   end
# end

# puts "output0"
# parser.printRecord(singleRecord)
# puts

# puts "output1"
# singleRecord.sort_by! { |h| [h[:gender], h[:l_name]] }
# parser.printRecord(singleRecord)
# puts

# puts "output2"
# singleRecord.sort_by! { |h| h[:b_date] }
# parser.printRecord(singleRecord)
# puts

# puts "output3"
# singleRecord.sort_by! { |h| h[:l_name] }.reverse
# parser.printRecord(singleRecord)
# puts





