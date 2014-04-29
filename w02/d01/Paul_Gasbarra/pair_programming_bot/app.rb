require 'sinatra'
require 'sinatra/reloader'

get '/' do
  @question = "Do you have a test for that?"
  @prompt1 = "<a class= 'yes' href=/pass>Yes</a>"
  @prompt2 = "<a class= 'no' href=/write_test>No</a>"
  erb :main
end

get '/pass' do
  @question = "Does the test pass?"
  @prompt1 = "<a class= 'yes' href=/refactor>Yes</a>"
  @prompt2 = "<a class= 'no' href=/write_code>No</a>"
  erb :main
end

get '/write_test' do
  @question = "Write a test."
  @prompt1 = "<a class= 'done' href=/pass>Done</a>"
  erb :main
end

get '/refactor' do
  @question = "Need to be refactored?"
  @prompt1 = "<a class= 'yes' href=/do_refactor>Yes</a>"
  @prompt2 = "<a class= 'no' href=/new_feature>No</a>"
  erb :main
end

get '/do_refactor' do
  @question = "Refactor the code."
  @prompt1 = "<a class= 'done' href=/pass>Done</a>"
  erb :main
end

get '/write_code' do
  @question = "Write just enough code for the test to pass."
  @prompt1 = "<a class= 'done' href=/>Done</a>"
  erb :main
end

get '/new_feature' do
  @question = "Select a new feature to implement."
  @prompt1 = "<a class= 'done' href=/>Done</a>"
  erb :main
end
