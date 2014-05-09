require "bundler"
Bundler.require(:default)

get "/rectangle" do
  
  @height = rand(500)
  @width = rand(500)
  @r = rand(256)
  @g = rand(256)
  @b = rand(256)

  # @height = 100
  # @widht = 200
  # @r = 20
  # @g = 30
  # @b = 40

  erb :rectangle


end

get "/rectangle/:num"
  @rectangle = params[:num].to_i.times.map do 
    height = rand(500)
    width = rand(500)
    r = rand(100)
    g = rand(100)
    b = rand(100)

    {width: width, height: height, r: r, g: g, b: b }
  end
  
  erb :rectangle
end
