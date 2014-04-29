
require 'sinatra'
require 'sinatra/reloader'

get '/' do
  erb :menu
end

get '/:function' do
  @function = params[:function]
  @result = "Please enter number(s) in url for #{@function}"
  erb :result
end

get '/:function/:a' do
  @function = params[:function]
  if @function == "square_root"
    @num1 = params[:a].to_f
    @result = @num1 ** 0.5
  else
    @result = "Please enter another number in url for #{@function}"
  end
  erb :result
end


get '/:function/:a/:b' do
  @function = params[:function]
  @num1 = params[:a].to_f
  @num2 = params[:b].to_f
  case @function
  when "add"
    @result = @num1+@num2
  when "subtract"
    @result = @num1-@num2
  when "multiply"
    @result = @num1*@num2
  when "divide"
    @result = @num1/@num2
  when "square_root"
    @result = "Please enter only one number for square root in url."
  when "powers"
    @result = @num1**@num2
  end
  erb :result
end
