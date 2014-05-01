require 'bundler/setup'
Bundler.require(:default)

# setup and default not necessary

 class Random
   def initialize
      @width = rand(200).to_s + "px"
      @width = rand(200).to_s + "px"
      @color = "%06x" % (rand * 0xffffff)
  end
 end

get '/rectangle' do
  # @width = rand(100..300).to_s
  # @height = rand(100..300).to_s
  # @color = "%06x" % (rand * 0xffffff)
  # @rectangles = [{width: width, height: height, color: color}]
  # erb :rectangle

  redirect to "/rectangle/1"
end

get '/rectangle/:num' do
  @rectangles = params[:num].to_i.times.map do
      Rectangle.new
      # width = rand(100..300).to_s + "px"
      # height = rand(100..300).to_s + "px"
      # color = "%06x" % (rand * 0xffffff)
      #binding.pry
      {width: width, height: height, color: color}
  end

  erb :rectangle

  #binding.pry
  #required pry and then see if runs
end
