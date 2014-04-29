require 'sinatra'
require 'sinatra/reloader'
#require 'pry'

get '/' do
	"append '/' then your operation '/' nmbr 1 '/' nmbr 2. ok?
	
	operations: add ; subtract ; multiply ; divide; * powerof ; * sqroot"
end

get '/add' do
erb :adding
end

get '/add/:num1' do
"add / then num 2"
end
get '/add/:num1/:num2' do
	@num1 = params[:num1].to_i
	@num2 = params[:num2].to_i
	@solv = @num1 + @num2
erb :added
	
end

get '/subtract' do
"append the numbers to subtract above, use '/' to seperate"
end

get '/subtract/:num' do
	"append '/' and next nmbr"
end
get '/subtract/:num1/:num2' do
	@num1 = params[:num1].to_i
	@num2 = params[:num2].to_i
	@solv = @num1 - @num2
erb :subtract
end

get '/divide/:num1/:num2' do
	@num1 = params[:num1].to_i
	@num2 = params[:num2].to_i
	@solv = @num1 / @num2
erb :divide
end

get '/multiply/:num1/:num2' do
	@num1 = params[:num1].to_i
	@num2 = params[:num2].to_i
	@solv = @num1 * @num2
erb :multiply
end

get '/powerof/:num1/:num2' do
	@num1 = params[:num1].to_i
	@num2 = params[:num2].to_i
	@solv = @num1 ** @num2
erb :power
end
get '/sqroot/:num1' do
	@num1 = params[:num1].to_i
	
	@solv = Math.sqrt(@num1)
erb :sqrt
end