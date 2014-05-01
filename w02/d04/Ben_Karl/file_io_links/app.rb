require "bundler/setup"
Bundler.require

get "/" do
  erb :index
end

get "/links" do
  erb :links
end

post "/links" do
  redirect "/links"
end

def file_contents(path)
f = File.open(path)
contents = []
  f.each do |line|
    contents << line
  end
  contents
end

def merge(item)
  item.gsub(" ", "").gsub("\n", "").split(",")
end


