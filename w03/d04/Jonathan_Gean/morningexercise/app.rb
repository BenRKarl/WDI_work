require 'bundler'
Bundler.require

get '/:num' do
  def find_multiples(x)
  num_array = (1..1000).to_a
  num_array.select {|num| num % x == 0}
  end
  @num = find_multiples(params[:num].to_i)
erb :index
end


