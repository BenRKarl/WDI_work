require "bundler/setup"
Bundler.require

get "/" do
  erb :index
end

post "/index" do
  @company = params[:company]
  @service = params[:service]
  @cost = params[:cost]
  File.open("receipt.txt", "w") do |line|
    line.puts "- Comany Name: #{@company}\n"
    line.puts "- Service Provided: #{@service}\n"
    line.puts "- Total Cost: #{@cost}\n"
  end
  redirect "/index"
end

get "/index" do
  erb :result
end

# File.open('test.rb', 'w') do |f2|
#   # use "\n" for two lines of text
#   f2.puts "Created by Satish\nThank God!"
# end
