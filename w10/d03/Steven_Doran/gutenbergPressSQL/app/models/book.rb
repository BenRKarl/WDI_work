class Book < ActiveRecord::Base
   has_many :word_counts

end

# Book.connection.execute('SELECT * FROM books;')