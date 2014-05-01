require 'bundler/setup'
Bundler.require

get '/rectangle' do
  color = ['blue', 'black', 'green', 'yellow', 'chartreuse','orange'].sample
  width = [100, 200, 300, 400, 500].sample
  height = [100, 200, 300, 400, 500].sample
  @rectangles = [{width: width, height: height, color: color}]
  erb :rectangle

  # redirect to "/rectangle/1"

end

get '/rectangle/:number' do
  @rectangles = params[:number].to_i.times.map do
    color = ['blue', 'black', 'green', 'yellow', 'chartreuse','orange'].sample
    width = [100, 200, 300, 400, 500].sample
    height = [100, 200, 300, 400, 500].sample
    {width: width, height: height, color: color}
  end
  erb :rectangle
end
