require "sinatra"
require "sinatra/reloader"

get"/" do
  erb :main
end


get '/add/:num1/:num2' do
  @result = "adding"
  @num1 = params[:num1].to_i
  @num2 = params[:num2].to_i
  @result += "<br/>Answer: " + (@num1 + @num2).to_s
  erb :output

end

get "/subtract/:num1/:num2" do
  @result = "subtracting"
  @num1 = params[:num1].to_i
  @num2 = params[:num2].to_i
  @result += "<br/>Answer: " + (@num1 - @num2).to_s
  erb :output
end

get "/multiply/:num1/:num2" do
  @result = "multiply"
  @num1 = params[:num1].to_i
  @num2 = params[:num2].to_i
  @result += "<br/>Answer: " + (@num1 * @num2).to_s
  erb :output
end

get "/divide/:num1/:num2" do
  @result = "divide"
  @num1 = params[:num1].to_i
  @num2 = params[:num2].to_i
  @result += "<br/>Answer: " + (@num1 / @num2).to_s
  erb :output
end

get "/square_root/:num1" do
  @result = "square root"
  @num1 = params[:num1].to_i
  
  @result += "<br/>Answer: " + (Math.sqrt(@num1)).to_s
  erb :output
end

get "/exponent/:num1/:num2" do
  @result = "exponent"
  @num1 = params[:num1].to_i
  @num2 = params[:num2].to_i
  @result += "<br/>Answer: " + (@num1**@num2).to_s
  erb :output
end


