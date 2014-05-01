require "bundler/setup"
Bundler.require

#Or select a specific book
#Get text of book
#Parse text
#Store the results in a new file

get "/" do
  erb :root
end

get "/books/:name" do
  @name = params[:name]
  erb :show
end
