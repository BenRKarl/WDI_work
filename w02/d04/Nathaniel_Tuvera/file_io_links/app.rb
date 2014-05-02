require 'bundler/setup'
Bundler.require

get '/' do
erb :index
end

get '/:links' do
  @file = params[:links]
  @file_list = File.open(params[:links] + ".csv")
  @elements =  @file_list.read.gsub("\n","").gsub(", "," ").split(" ")

  erb :links
end
