require "sinatra"
require "sinatra/reloader"

get "/hi" do
  word = ['happy', 'sad', 'joyous'].sample
  "Hellow WDI. Welcome to almost on the Web. You seem #{word}."
end
