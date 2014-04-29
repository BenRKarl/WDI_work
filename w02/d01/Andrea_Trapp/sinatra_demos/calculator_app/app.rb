require 'sinatra'
require 'sinatra/reloader'

get '/' do 
	erb :calculator
end

get '/:calculate/:num1/:num2' do
	@calculate = params[:calculate]
	@num1 = params[:num1]	
	@num2 = params[:num2]

	case @calculate
	when "add"
		@title = "Addition"
		@result = @num1.to_i + @num2.to_i
		@result_text = "#{@num1} + #{@num2} = #{@result}"
	when "subtract"
		@title = "Subtraction"
		@result = @num1.to_i - @num2.to_i
		@result_text = "#{@num1} - #{@num2} = #{@result}"
	when "multiply"
		@title = "Multiplication"
		@result = @num1.to_i * @num2.to_i
		@result_text = "#{@num1} * #{@num2} = #{@result}"
	when "divide"
		@title = "Division"
		@result = @num1.to_f / @num2.to_f
		@result_text = "#{@num1} / #{@num2} = #{@result}"
	when "sqrt"
		@title = "Square Root"
		@result = Math.sqrt(@num2.to_f)
		@result_text = "SQRT #{@num2} = #{@result}"
	when "power"
		@title = "Power"
		@result = @num1.to_i**@num2.to_i
		@result_text = "#{@num1} ** #{@num2} = #{@result}"
	end

	erb :result
end
