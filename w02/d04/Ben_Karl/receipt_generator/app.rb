require "bundler/setup"
Bundler.require

get "/" do
  erb :index
end

post "/index" do
  @company = params[:company]
  @service = params[:service]
  @cost = "%.2f" % params[:cost].to_f
  File.open("receipt.txt", "w") do |line|
    line.puts "- Comany Name: #{@company}\n"
    line.puts "- Type of Service: #{@service}\n"
    line.puts "- Total Cost: $#{@cost}\n"
  end
  redirect "/index"
end

get "/index" do
  erb :result
end

post "/receipt" do
  redirect "/receipt"
end

get "/receipt" do
  @receipt_content = File.open("receipt.txt", "r")
  erb :receipt
end
