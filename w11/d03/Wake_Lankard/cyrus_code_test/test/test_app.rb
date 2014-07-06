require 'minitest/autorun'
require_relative '../FileDump.rb'
require 'date'

describe FileDump do
  before do

    @fileDump        = FileDump.new
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
                        :gender    => "Male",
                        :fav_color => "Red",
                        :b_date    => Date.parse("3rd March 1985")
                      }
    @commaHash     = {  
                        :l_name    => "Abercrombie",
                        :f_name    => "Neil",
                        :gender    => "Male",
                        :fav_color => "Tan",
                        :b_date    => Date.parse("13th Feb 1943")
                      }
    @spaceHash     = { 
                        :l_name    => "Kournikova",
                        :f_name    => "Anna",
                        :mid_init  => "F", 
                        :gender    => "Female", 
                        :fav_color => "Red", 
                        :b_date    => Date.parse("3th June 1975")
                      }

  end

  describe "when given a file" do

    it "can write the contents to an array by line" do
      file_contentsArr = []
      file_contentsArr = @fileDump.fileToArr(@path + @pipeFileName)
      file_contentsArr[0].must_equal @pipeData
    end
  end

  describe "when given a line of data" do

    it "can identify the pipe delimiter" do 
      @fileDump.identifyDelimiter(@pipeData, @delimiters).must_equal "|"
    end

    it "can identify the comma delimiter" do 
      @fileDump.identifyDelimiter(@commaData, @delimiters).must_equal ","
    end

    it "can identify the space delimiter" do 
      @fileDump.identifyDelimiter(@spaceData, @delimiters).must_equal " "
    end

    it "can parse the pipe-delimited data correctly into a hash" do
      @fileDump.strToHash(@pipeData).must_equal @pipeHash
    end

    it "can parse the comma-delimited data correctly into a hash" do
      @fileDump.strToHash(@commaData).must_equal @commaHash
    end

    it "can parse the space-delimited data correctly into a hash" do
      @fileDump.strToHash(@spaceData).must_equal @spaceHash
    end
  end

end




