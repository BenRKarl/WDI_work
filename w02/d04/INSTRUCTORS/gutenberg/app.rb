require 'bundler/setup'
Bundler.require

# NOTES
# Now the "books" and the "parse_data" directory are part
# of the domain knowledge, so they should be extracted,

BOOK_DIR = "books"
PARSE_DATA_DIR = "parse_data"

[BOOK_DIR, PARSE_DATA_DIR].each do |directory|
  next if File.directory?(directory)
  Dir.mkdir(directory)
end

get '/' do
  erb :root
end

get '/books/:name' do
  @name = params[:name]
  @word_counts = sort_counts(@name)
  erb :show
end

def sort_counts(book_name)
  book = Book.new(book_name)
  book.word_counts.sort_by { |word, counts| -word.length }
end

class Book
  DIR = "books"
  attr_reader :name
  def initialize(name)
    @name = name
  end

  def word_counts
    if parse_data_exists?
      counts = read_parse_data
    else
      counts = count_words
      write_parse_data(counts)
    end
    counts
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
  end

  def parse_data_exists?
    ParsedData.new(name).exists?
  end

  def read_parse_data
    ParsedData.new(name).read
  end

  def write_parse_data(word_counts)
    ParsedData.new(name).write
  end
end

class ParsedData
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

  def write
    file_path = File.join(PARSE_DATA_DIR, book_name)
    File.open(file_path, 'w') do |f|
      word_counts.each do |word, count|
        f << "#{word}: #{count}\n"
      end
    end
  end
end
