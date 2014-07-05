require 'minitest/autorun'
require_relative '../app'
require 'date'

describe Parser do
  before do

    @parser        = Parser.new
    @pipeFileName  = "pipe_delimited.txt"
    @commaFileName = "comma_delimited.txt"
    @spaceFileName = "space_delimited.txt"
    @path          = "../"
    @pipeData      = "Smith | Steve | D | M | Red | 3-3-1985"
    @commaData     = "Abercrombie, Neil, Male, Tan, 2/13/1943"
    @spaceData     = "Kournikova Anna F F 6-3-1975 Red"
    @delimiters    = ["|", ",", " "]
    @pipeHash      = { 
                        :l_name   => "Smith",
                        :f_name    => "Steve",
                        :mid_init  => "D",
                        :gender    => "male",
                        :fav_color => "Red",
                        :b_date    => Date.parse("3rd March 1985")
                      }
    @commaHash     = {  
                        :l_name    => "Abercrombie",
                        :f_name    => "Neil",
                        :gender    => "male",
                        :fav_color => "Tan",
                        :b_date    => Date.parse("13th Feb 1943")
                      }
    @spaceHash     = { 
                        :l_name    => "Kournikova",
                        :f_name    => "Anna",
                        :mid_init  => "F", 
                        :gender    => "female", 
                        :fav_color => "Red", 
                        :b_date    => Date.parse("3th June 1975")
                      }

  end

  describe "when given a pipe-delimited file" do

    it "can open it and get data" do
      file_contents = ""
      file_contents = @parser.readFile(@path + @pipeFileName)
      file_contents.wont_equal ""
    end

    it "can write the contents to an array by line" do
      file_contents = []
      file_contentsArr = @parser.parseFile(@path + @pipeFileName)
      file_contentsArr[0].must_equal @pipeData
    end
  end

  describe "when given a line of data" do

    it "can identify the pipe delimiter" do 
      @parser.identifyDelimiter(@pipeData, @delimiters).must_equal "|"
    end

    it "can identify the comma delimiter" do 
      @parser.identifyDelimiter(@commaData, @delimiters).must_equal ","
    end

    it "can identify the space delimiter" do 
      @parser.identifyDelimiter(@spaceData, @delimiters).must_equal " "
    end

    it "can parse the pipe-delimited data correctly into a hash" do
     # test_b_date = Date.parse ("3/3/1985")
      @parser.strToHash(@pipeData).must_equal @pipeHash
    end

    it "can parse the comma-delimited data correctly into a hash" do
     # test_b_date = Date.parse ("3/3/1985")
      @parser.strToHash(@commaData).must_equal @commaHash
    end

    it "can parse the space-delimited data correctly into a hash" do
      #test_b_date = Date.parse ("3/3/1985")
      @parser.strToHash(@spaceData).must_equal @spaceHash
    end
  end

  describe "when given a single record" do

    it "can sort by two records, asceding or descending" do
      singleRecord = []
      singleRecord.push(@pipe.hash)
      singleRecord.push(@commaHash)
      singleRecord.push(@spaceHash)

      testRecord = []
      testRecord.push(@spaceHash)
      testRecord.push(@pipeHash)
      testRecord.push(@commaHash)

      @parser.sortRecord(gender, a, l_name ,d). must_equal testRecord
    end






  end


end




