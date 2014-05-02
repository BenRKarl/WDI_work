require 'bundler/setup'
Bundler.require

get '/' do
erb :index
end

get '/:links' do
  "hello world"
  @file = params[:links]
  @file_list = File.open("#{@file}" + ".csv")
  @elements =  @file_list.read.gsub("\n","").gsub(", "," ").split(" ")

  erb :links
end
