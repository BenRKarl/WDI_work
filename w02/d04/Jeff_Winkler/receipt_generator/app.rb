
require 'bundler/setup'
Bundler.require

get '/' do
  erb :index
end

post '/receipts' do

  info = []
  params.each do |key, value|
    tempstr = "#{key}:  #{value}\n"
    info.push(tempstr)
  end
  info.push("Thank you\n")
  f = File.open("receipts.txt", "a")
  info.each do |str|
    f.write(str)
  end

  f.close

  #{}"#{info}"

  #{}"#{params}"

  redirect "/receipts"
end

get '/receipts' do

  f=File.open("receipts.txt", "r")
  array = f.readlines
  f.close

  array.each {|x| x.chomp!}

  @receipts = []

  while !array.empty?
    @receipts << array.slice!(0,4)
  end

  erb :show
  #"#{@receipts}"

  #"Receipt has been printed"
end


