require'bundler'
Bundler.require


get '/' do 
  @num = 1
  erb :index
end

get '/:num' do 
  @num = params[:num].to_i
  erb :index
end