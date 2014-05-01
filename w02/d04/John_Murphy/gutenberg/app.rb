require 'bundler/setup'
Bundler.require

get '/' do

#   [4] pry(main)> id = GutenbergBookFinder.random_id
# 33291
# [5] pry(main)> id = GutenbergBookFinder.book_info(33291)
# []
# [6] pry(main)> id = GutenbergBookFinder.book_text(33291)
  erb :root
end

get '/books/:name' do
  @name = params[:name]
  erb :show
end
