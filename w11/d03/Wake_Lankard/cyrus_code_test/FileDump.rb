require 'pry-byebug'
require 'date'
class FileDump

  def initialize()

    pipeMap         = { :l_name    => 0,
                        :f_name    => 1,
                        :mid_init  => 2,
                        :gender    => 3,
                        :fav_color => 4,
                        :b_date    => 5
                      }

    commaMap        = { :l_name    => 0,
                        :f_name    => 1,
                        :gender    => 2,
                        :fav_color => 3,
                        :b_date    => 4
                      }

    spaceMap        = { :l_name    => 0,
                        :f_name    => 1,
                        :mid_init  => 2,
                        :gender    => 3,
                        :fav_color => 5,
                        :b_date    => 4
                      }

    @masterMap      = { "|"        => pipeMap,
                        ","        => commaMap,
                        " "        => spaceMap
                      } 

    @dateDelimiters = [ "/", "-" ]

  end  

  def combineFiles(fileNameArr)
    combinedRecord = []

    fileNameArr.each do |file|
      contentsArr = fileToArr(file)
      contentsArr.each do |record|
        combinedRecord << strToHash(record)
      end
    end

    combinedRecord
  end

  def fileToArr(filename)
    abort(filename + " does not exist.") unless File.exists?(filename)

    resultsArr = []
    results_arr = File.open(filename).read().split("\n")
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
    str.capitalize!
    return "Male" if str == "M"
    return "Female" if str == "F"
    return str
  end

  def processDate(str)
    date = Date.new
    delimiter = identifyDelimiter(str, @dateDelimiters)
    dateArr = str.split(delimiter)
    return Date.new(dateArr[2].to_i, dateArr[0].to_i, dateArr[1].to_i)
  rescue
    abort(dateArr.to_s + " is an invalid date.")
  end

  def printAll(recordArr)
    recordArr.each do |line|
      print line[:l_name] + " "
      print line[:f_name] + " "
      print line[:gender] + " "
      print line[:b_date].mon.to_s + "/" + line[:b_date].mday.to_s + "/" + line[:b_date].year.to_s + " "
      print line[:fav_color] + " "
      puts
    end
  end
end