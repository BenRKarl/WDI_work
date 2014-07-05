class Parser

def initialize
  @pipeMap    = { :l_name    => 0,
                  :f_name    => 1,
                  :mid_init  => 2,
                  :gender    => 3,
                  :fav_color => 4,
                  :b_date    => 5
                }
  @commaMap   = { :l_name    => 0,
                  :f_name    => 1,
                  # :mid_init  => 2,
                  :gender    => 2,
                  :fav_color => 3,
                  :b_date    => 4
                }
  @spaceMap   = { :l_name    => 0,
                  :f_name    => 1,
                  :mid_init  => 2,
                  :gender    => 3,
                  :fav_color => 5,
                  :b_date    => 4
                }

  @delimiters = ["|", ","]   
end  


  def readFile(filename)
    file_contents = File.open(filename).read()
  end

  def parseFile(filename)
    resultsArr = []
    file_contents = readFile(filename)
    resultsArr = file_contents.split("\n")
  end

  def identifyDelimiter(data)
    delimiters = ["|", ","]      
    @delimiters.each do |d|
      return d if data.include? d
    end
    return "space"
  end

  def strToHash(str)
    resultHash = {}
    arr = []
    arr = str.split(/\|/).each { |x| x.strip! }

    @pipeMap.each { |k,v| resultHash[k] = arr[v] }
    # resultHash[:gender] = processGender(resultHash[:gender])
    processGender!(resultHash[:gender])

    resultHash[:b_date] = Date.parse(resultHash[:b_date])
  
    # resultHash[:l_name] = arr[0]
    # resultHash[:f_name] = arr[1]
    # resultHash[:mid_init] = arr[2]
    # resultHash[:gender] = processGender(arr[3])
    # resultHash[:fav_color] = arr[4]
    # resultHash[:b_date] = Date.parse(arr[5])

    resultHash
  end

  def processGender(str)
    str.downcase!
    return "male" if str == "m"
    return "female" if str == "f"
    return str
  end




end
