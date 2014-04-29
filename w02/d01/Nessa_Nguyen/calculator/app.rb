require 'sinatra'
require 'sinatra/reloader'

get '/:action/:num1/:num2' do 
  @action = params[:action]
  #['add', 'subtract', 'multiply', 'divide', 'sqrt', 'power']
  @num1 = params[:num1]		
  @num2 = params[:num2]	

  if @action == 'add'
  	@result = @num1.to_i + @num2.to_i
  elsif @action == 'subtract'
  	@result = @num1.to_i - @num2.to_i
  elsif @action == 'multiply'
  	@result = @num1.to_f * @num2.to_f  	
   elsif @action == 'divide'
  	@result = @num1.to_f / @num2.to_f
  elsif @action == 'sqrt'
  	@result = Math.sqrt(@num1.to_f)
  	@num2 = nil.to_s
  elsif @action == 'power'	
  	@result = @num1.to_i**@num2.to_i
  else
  	@result = "Choose another mathematical calculation"	
  end	
  
  erb :calculator	
end