require 'bundler'
Bundler.require

get '/:num' do

num = params[:num].to_i
count = 1
max = 1001
@multiples = []
  while count < max
    if count % num == 0
      @multiples << count
      count += 1
    else
      count += 1
    end
  end

  erb :index
end
