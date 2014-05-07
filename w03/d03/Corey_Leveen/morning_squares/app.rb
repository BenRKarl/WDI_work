require 'bundler'
Bundler.require

get '/' do
  erb :index
end

get '/:num_squares' do
  @num = params[:num_squares].to_i
  erb :show

end
