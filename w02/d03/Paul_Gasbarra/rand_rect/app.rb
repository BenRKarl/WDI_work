require 'bundler/setup'
Bundler.require(:default)


get "/rectangle" do
  @width = rand(100..300)
  @height = rand(100..300)
  @red = rand(256)
  @green = rand(256)
  @blue = rand(256)

  erb :rectangle
  # return "<div"
end

end
