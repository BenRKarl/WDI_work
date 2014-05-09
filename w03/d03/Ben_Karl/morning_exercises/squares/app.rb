require "bundler"
Bundler.require

get "/" do
  erb :index
end

get "/:num" do
  @num = params[:num].to_i
  erb :show
end
