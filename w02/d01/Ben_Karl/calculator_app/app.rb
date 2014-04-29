require "sinatra"
require "sinatra/reloader"

get "/add/:num1/:num2" do

  @num1 = params[:num1].to_i
  @num2 = params[:num2].to_i
  @answer = @num1 + @num2
  erb :add

end

get "/subtract/:num1/:num2" do

  @num1 = params[:num1].to_i
  @num2 = params[:num2].to_i
  @answer = @num1 - @num2
  erb :subtract

end

get "/divide/:num1/:num2" do

  @num1 = params[:num1].to_f
  @num2 = params[:num2].to_f
  @answer = @num1 / @num2
  erb :divide

end

get "/multiply/:num1/:num2" do

  @num1 = params[:num1].to_i
  @num2 = params[:num2].to_i
  @answer = @num1 * @num2
  erb :multiply

end

get "/exponent/:num1/:num2" do

  @num1 = params[:num1].to_i
  @num2 = params[:num2].to_i
  @answer = @num1 ** @num2
  erb :exponent

end

get "/square_root/:num/" do

  @num = params[:num].to_i.abs
  @answer = Math.sqrt(@num)
  erb :square_root

end
