require 'bundler/setup'
Bundler.require

get '/' do
  erb :index
end

get '/links' do
f = File.open('links.csv', 'r')
f2 = f.readlines
reddit = f2[0].split(", ")
@reddit1 = reddit[0]
@reddit2 = reddit[1]
ycombinator = f2[1].split(", ")
@ycombinator1 = ycombinator[0]
@ycombinator2 = ycombinator[1]
techcrunch = f2[2].split(", ")
@techcrunch1 = techcrunch[0]
@techcrunch2 = techcrunch[1]
macrumors = f2[3].split(", ")
@macrumors1 = techcrunch[0]
@macrumors2 = techcrunch[1]
gizmodo = f2[4].split(", ")
@gizmodo1 = gizmodo[0]
@gizmodo2 = gizmodo[1]
  erb :links
end

