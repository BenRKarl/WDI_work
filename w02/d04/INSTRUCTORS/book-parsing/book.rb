require_relative './parse_data'

class Book
  DIR = "books"
  attr_reader :name
  def initialize(name)
    @name = name
  end

<<<<<<< HEAD
  def word_counts
    if parse_data_exists?
      counts = read_parse_data
    else
      counts = count_words
      write_parse_data(counts)
    end
    counts
  end

  def parse_data_exists?
    parse_data.exists?
  end

  def read_parse_data
    parse_data.read
  end

  def write_parse_data(word_counts)
    parse_data.write
  end

  def parse_data
    @parse_data ||= ParseData.new(name)
  end

  def count_words
    word_counts = Hash.new { |hash, key| hash[key] = 0 }
    words(name).each do |word|
      word_counts[word] += 1
    end
    word_counts
  end

  def words
    book_text(name).split(' ').map { |word| word.downcase }
  end

  def book_text
    book_path = File.join(BOOK_DIR, name)
    File.read(book_path)
=======
  def words
    text.split(' ').map { |word| word.downcase }
  end

  def text
    book_path = File.join(DIR, name)
    File.read(book_path).delete(',.:!;?[]')
>>>>>>> 02e0d067a506c2025abac1604af78d438950e37b
  end
end
