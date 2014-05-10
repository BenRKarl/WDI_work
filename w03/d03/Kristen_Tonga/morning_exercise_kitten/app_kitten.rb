require 'bundler'
Bundler.require

get '/' do
  # # @num = rand(20)
  # @width = rand(300) +50
  # @height = rand(300) +50
  # width = params[:width]
  # height = params[:height]

  num_kittens = params[:num_kittens].to_i
  @kittens = num_kittens.times.map{ Kitten.new}

  erb :index
end


class Kitten
  attr_reader :url
  def initialize
    @url = "http://placekitten.com/#{rand(500)}/#{rand(500)}"
  end
end


# style="width:"<%=@random_number%>" height:"<%=@random_number%>"
# <%= @num.to_i.times %><%= end %>
