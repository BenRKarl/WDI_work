require "sinatra"
require "sinatra/reloader"

get "/" do
  @statement = "Do you have a test?"
  @link1 = "http://localhost:4567/does"
  @link2 = "http://localhost:4567/write"
  erb :y_n
end

get "/does" do
  @statement = "Does the test pass?"
  @link1 = "http://localhost:4567/need_to"
  @link2 = "http://localhost:4567/just_enough"
  erb :y_n
end

get "/need_to" do
  @statement = "Need to refactor?"
  @link1 = "http://localhost:4567/refactor"
  @link2 = "http://localhost:4567/select"
  erb :y_n
end

get "/write" do
  @statement = "Write a test."
  erb :done
end

get "/just_enough" do
  @statement = "Write just enough code for the test to pass."
  erb :done
end

get "/select" do
  @statement = "Select a new feature to implement."
  erb :done
end

get "/refactor" do
  @statement = "Refactor the code."
  erb :done
end
