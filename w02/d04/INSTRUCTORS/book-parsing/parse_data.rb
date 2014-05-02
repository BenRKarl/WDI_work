class ParseData
  DIR = "parse_data"
  attr_reader :book_name
  def initialize(book_name)
    @book_name = book_name
  end

  def exists?
    file_path = File.join(DIR, book_name)
    File.exists?(file_path)
  end

  def read
    file_path = File.join(DIR, book_name)
    File.readlines(file_path).map { |line| line.split(": ") }
  end

<<<<<<< HEAD
  def write
    file_path = File.join(PARSE_DATA_DIR, book_name)
=======
  def write(word_counts)
    file_path = File.join(DIR, book_name)
>>>>>>> 02e0d067a506c2025abac1604af78d438950e37b
    File.open(file_path, 'w') do |f|
      word_counts.each do |word, count|
        f << "#{word}: #{count}\n"
      end
    end
  end
end
