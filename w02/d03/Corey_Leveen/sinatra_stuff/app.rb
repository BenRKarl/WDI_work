require 'bundler/setup'
Bundler.require

  get '/rectangle' do
    @width = rand(400)
    @height = rand(400)
    @color1 = rand(255)
    @color2 = rand(255)
    @color3 = rand(255)
    erb :rectangles
  end

  get '/rectangle/:num' do
    @num = params[:num]
    @width = @num
    @height = @num
    @color1 = @num
    @color2 = @num
    @color3 = @num
    erb :rectangles

  end

