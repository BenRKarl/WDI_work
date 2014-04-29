require "sinatra"
require "sinatra/reloader"

get "/hi" do
  word = ["handsome", "sexy", "good looking", "dashing"].sample
  "Hello WDI. Welcome to almost on the web. Steven, you seem particularly #{word} today."
end