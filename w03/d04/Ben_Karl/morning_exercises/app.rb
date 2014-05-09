require "bundler"
Bundler.require

get "/" do
  redirect "/2"
end

get "/:num" do
  @num = params[:num].to_i
  erb :index
end
