require 'bundler'
Bundler.require



get '/' do
  erb :index
end

get '/links' do

  file = File.open('../links.csv','r')
  lines = file.readlines
  hash = lines.map {|link| link.split(', ')}
  titles = hash.map{|title, hyperlink| title}
  hyperlinks = hash.map{|title, hyperlink| hyperlink.chomp("\n")}
    #If elements are inspected in web browser, it looks like the // have been removed, breaking the link, but I don't understand how this is happening. I've tried gsub, chop, chomp('\n') and even removing chomp entirely. None of these seem to make any difference.

@link_titles = titles
@hyperlink = hyperlinks
# #hyperlink needs to be chomped
# x = 0
#   puts("<div class=link><a href '#{ @hyperlink[@x] }'> #{ @link_titles[@x] } </a></div>")
#   x +=1
# end

  erb :show
end

