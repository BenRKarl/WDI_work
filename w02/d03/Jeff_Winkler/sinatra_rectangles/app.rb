
require 'bundler/setup'
Bundler.require(:default)

get '/rectangle' do
  @allrect = []
  @width = rand(500).to_s + "px"
  @height = rand(500).to_s + "px"
  @c1 = rand(100).to_s + "%"
  @c2 = rand(100).to_s + "%"
  @c3 = rand(100).to_s + "%"
  @currstyle = [@width, @height, @c1, @c2, @c3]

  @allrect.push(@currstyle)
  erb :rectangle


end

get '/rectangle/:num' do
  @num = params[:num].to_i
  @allrect = []
  @num.times do
    @width = rand(500).to_s + "px"
    @height = rand(500).to_s + "px"
    @c1 = rand(100).to_s + "%"
    @c2 = rand(100).to_s + "%"
    @c3 = rand(100).to_s + "%"
    @currstyle = [@width, @height, @c1, @c2, @c3]
    @allrect.push(@currstyle)
  end

  #binding.pry


  erb :rectangle


end
