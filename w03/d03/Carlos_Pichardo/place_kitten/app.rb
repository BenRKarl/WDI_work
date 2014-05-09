require 'bundler'
Bundler.require

get '/' do 


redirect '/1'
end 

get '/:num_kittens' do 
@num_kittens = params[:num_kittens].to_i
@width = rand(500)
@height = rand(500)

erb :index

end 