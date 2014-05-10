require'bundler'
Bundler.require

def find_multiples(x, arr)
  arr.select { |var| var % x == 0 }
end


get '/:num/:sample_size' do 
  arr = (1..params[:sample_size].to_i).to_a
  @multiples = find_multiples(params[:num].to_i, arr)
  erb :index
end 