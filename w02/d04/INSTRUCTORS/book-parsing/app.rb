require 'bundler/setup'
Bundler.require

# NOTES
# Now the "books" and the "parse_data" directory are part
# of the domain knowledge, so they should be extracted,
# which gives us an idea for what objects we could create

require_relative 'book'
require_relative 'parse_data'
<<<<<<< HEAD

[Book::DIR, ParseData::DIR].each do |directory|
  next if File.directory?(directory)
  Dir.mkdir(directory)
end
=======
require_relative 'book_parser'

BookParser.setup
>>>>>>> 02e0d067a506c2025abac1604af78d438950e37b

get '/' do
  erb :root
end

get '/books/:name' do
  @name = params[:name]
<<<<<<< HEAD
  @word_counts = sort_counts(@name)
  erb :show
end

def sort_counts(book_name)
  book = Book.new(book_name)
  book.word_counts.sort_by { |word, counts| -word.length }
=======
  book_parser = BookParser.new(@name)
  @word_counts = sort_counts(book_parser)
  erb :show
end

def sort_counts(book_parser)
  book_parser.word_counts.sort_by { |word, counts| -word.length }
>>>>>>> 02e0d067a506c2025abac1604af78d438950e37b
end
