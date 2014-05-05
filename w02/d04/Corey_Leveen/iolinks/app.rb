require 'bundler/setup'
Bundler.require

get '/' do
  "Welcome to the File IO Links root directory.
  Please navigate to 'localhost:4567/links'"
end

get '/links' do
   arrays = []
  @better = []

  f = File.open('../links.csv', 'r')
  array = f.readlines
  array.each do |x|
    arrays << x.split(",")
  end

  arrays.flatten.each do |x|
    @better << x.gsub(" ","").gsub("\n","")
  end

  @reddit = @better[0]
  @reddit_link = @better[1]
  @y_combinator = @better[2]
  @y_combinator_link = @better[3]
  @tech_crunch = @better[4]
  @tech_crunch_link = @better[5]
  @mac_rumors = @better[6]
  @mac_rumors_link = @better[7]
  @gizmodo = @better[8]
  @gizmodo_link = @better[9]

  erb :index
end



