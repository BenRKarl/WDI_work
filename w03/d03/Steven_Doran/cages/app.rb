require'bundler'
Bundler.require

get '/' do 
  redirect '/1'
end

get '/:num_nickcages' do 
  @num_nickcages = params[:num_nickcages].to_i
  @value = [*100..500]
  erb :index
end