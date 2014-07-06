require 'pry-byebug'
require 'date'
class FileDump

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

  def fileToArr(filename)
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

  def printAll(recordArr)
    recordArr.each do |line|
      print line[:l_name] + " "
      print line[:f_name] + " "
      print line[:gender] + " "
      print line[:b_date].to_s + " "
      print line[:fav_color] + " "
      puts
    end
  end






end