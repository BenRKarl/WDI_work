
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
  erb :result
end
