require "sinatra"
require "sinatra/reloader"

get "/hi" do
	word = ['happy', 'sad', 'joyous'].sample
	"hello, WDI. welcome hereeeeeeeee. you seem #{word}"
end